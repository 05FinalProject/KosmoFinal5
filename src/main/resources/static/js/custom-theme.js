jQuery(function () {
    'use strict';

    var stickyNavbar = true;

    /**
     * Search collapse
     * hide navbar collapse
     */
    jQuery('#lana-search').on('show.bs.collapse', function () {
        jQuery('#lana-navbar').collapse('hide');
    });

    /**
     * Navbar collapse
     * toggle bg
     */
    jQuery('#lana-navbar')
        .on('show.bs.collapse', function () {
            var $lanaPetMainNavbar = jQuery('#lana-pet-main-navbar');

            /** not has bg class */
            if (!$lanaPetMainNavbar.is('[class*="bg-"]')) {
                $lanaPetMainNavbar.addClass('bg-dark').attr('data-lana-collapse-bg', 'bg-dark');
            }

            /** has bg transparent class  */
            if ($lanaPetMainNavbar.hasClass('bg-transparent')) {
                $lanaPetMainNavbar.removeClass('bg-transparent').attr('data-lana-collapse-bg-transparent', true);
                $lanaPetMainNavbar.addClass('bg-dark').attr('data-lana-collapse-bg', 'bg-dark');
            }
        })
        .on('hide.bs.collapse', function () {
            var $lanaPetMainNavbar = jQuery('#lana-pet-main-navbar');

            /** remove lana bg */
            if ($lanaPetMainNavbar.attr('data-lana-collapse-bg')) {
                $lanaPetMainNavbar.removeClass($lanaPetMainNavbar.attr('data-lana-collapse-bg')).removeAttr('data-lana-collapse-bg');
            }

            /** add lana bg transparent */
            if ($lanaPetMainNavbar.attr('data-lana-collapse-bg-transparent')) {
                $lanaPetMainNavbar.addClass('bg-transparent').removeAttr('data-lana-collapse-bg-transparent');
            }
        });

    /**
     * Search widget
     * handle search form and buttons
     */
    jQuery(document)
        .on('click', '.search-widget.search-form:not(.active) button[type="submit"].search-button', function (e) {
            e.preventDefault();
            var $form = jQuery(this).closest('form'),
                $searchInput = $form.find('.search-input'),
                $closeButton = $form.find('.close-button');

            /** hide other widgets */
            jQuery('.button-nav-widget > ul.button-nav').animate({width: 'toggle'});
            jQuery('.information-widget > button').animate({width: 'toggle'});

            /** form add active */
            $form.addClass('active');

            /** show search */
            $searchInput.animate({width: 'toggle'}, 'default', function () {
                /** show close button */
                $closeButton.animate({width: 'toggle'}, 'fast').show();
                /** focus to search input */
                $searchInput.focus();
            }).show();
        })
        .on('click', '.search-widget.search-form.active button[type="submit"].search-button', function (e) {
            var $form = jQuery(this).closest('form');

            /** submit search form */
            $form.submit();
        })
        .on('click', '.search-widget.search-form.active button.close-button', function (e) {
            var $form = jQuery(this).closest('form'),
                $searchInput = $form.find('.search-input'),
                $closeButton = $form.find('.close-button');

            /** hide close button */
            $closeButton.hide();

            /** hide search */
            $searchInput.animate({width: 'toggle'}, 'default', function () {
                /** hide input */
                $searchInput.hide();
            });

            /** form remove active */
            $form.removeClass('active');

            /** show other widgets */
            jQuery('.button-nav-widget > ul.button-nav').animate({width: 'toggle'}).show();
            jQuery('.information-widget > button').animate({width: 'toggle'}).show();
        });

    /**
     * ScrollMagic
     * @type {Controller}
     */
    var scrollMagicController = new ScrollMagic.Controller();

    /** scroll animate */
    jQuery('[data-scroll-animate]').each(function () {
        var $element = jQuery(this),
            animateOn = 'onEnter',
            animateClass = '',
            animateSpeedClass = '';

        /** set animate on */
        if (jQuery(this).data('scroll-animate-on')) {
            animateOn = 'on' + jQuery(this).data('scroll-animate-on').replace(/^([a-z])|\s+([a-z])/g, function ($1) {
                return $1.toUpperCase();
            });
        }

        /** set animate class */
        if (jQuery(this).data('scroll-animate')) {
            animateClass = jQuery(this).data('scroll-animate');
        }

        /** set animate speed class */
        if (jQuery(this).data('scroll-animate-speed')) {
            animateSpeedClass = jQuery(this).data('scroll-animate-speed');
        }

        /** create scene */
        var scene = new ScrollMagic.Scene({
            triggerElement: $element.get(),
            triggerHook: animateOn,
            reverse: false
        }).addTo(scrollMagicController);

        /** add animate class */
        scene.on('enter', function () {
            $element.addClass('animated');
            $element.addClass(animateClass);
            $element.addClass(animateSpeedClass);
        });

        /** remove animate class */
        scene.on('leave', function () {
            $element.removeClass('animated');
            $element.removeClass(animateClass);
            $element.removeClass(animateSpeedClass);
        });
    });

    /**
     * Scroll to
     * anchor links
     */
    jQuery('a[href^="#"]').on('click', function (e) {
        var id = jQuery(this).attr("href");

        if (jQuery(id).length) {
            e.preventDefault();

            /** scroll to */
            jQuery('html, body').animate({scrollTop: jQuery(id).offset().top}, 1000);

            /** if supported by the browser we can also update the URL */
            if (window.history && window.history.pushState) {
                history.pushState("", document.title, id);
            }
        }
    });

    /**
     * Sticky navbar
     */
    if (stickyNavbar == true) {
        var $lanaPetMainNavbar = jQuery('#lana-pet-main-navbar'),
            lanaPetMainNavbarHasBgClass = $lanaPetMainNavbar.is('[class*="bg-"]'),
            $header = jQuery('.header');

        /**
         * add sticky navbar
         * add fixed top class and bg color class
         */
        function lanaAddStickyNavbar() {
            if (jQuery(window).scrollTop() >= $lanaPetMainNavbar.outerHeight()) {
                $lanaPetMainNavbar.addClass('fixed-top');

                /** not has bg class */
                if (!lanaPetMainNavbarHasBgClass) {
                    $lanaPetMainNavbar.addClass('bg-dark');
                }

                /** has bg transparent class  */
                if ($lanaPetMainNavbar.hasClass('bg-transparent')) {
                    $lanaPetMainNavbar.removeClass('bg-transparent').attr('data-lana-sticky-bg-transparent', true);
                    $lanaPetMainNavbar.addClass('bg-dark');
                }

                /** add placeholder to header */
                $header.css('padding-top', $lanaPetMainNavbar.outerHeight());
            } else {
                $lanaPetMainNavbar.removeClass('fixed-top');

                /** remove lana bg */
                if (!lanaPetMainNavbarHasBgClass) {
                    $lanaPetMainNavbar.removeClass('bg-dark');
                }

                /** add lana bg transparent */
                if ($lanaPetMainNavbar.attr('data-lana-sticky-bg-transparent')) {
                    $lanaPetMainNavbar.removeAttr('data-lana-sticky-bg-transparent');

                    /** check collapse */
                    if (!$lanaPetMainNavbar.attr('data-lana-collapse-bg-transparent')) {
                        $lanaPetMainNavbar.addClass('bg-transparent');
                    }
                }

                /** remove placeholder from header */
                $header.css('padding-top', '');
            }
        }

        /**
         * add scrollable navbar
         * check navbar fixed top and height
         */
        function lanaAddScrollableNavbar() {

            /** check navbar is fixed top */
            if (!$lanaPetMainNavbar.hasClass('fixed-top')) {
                return;
            }

            /** check navbar height */
            if (jQuery(window).height() >= $lanaPetMainNavbar.outerHeight()) {
                return;
            }

            /** add scrollable to navbar */
            $lanaPetMainNavbar.addClass('navbar-scroll');
            jQuery('body').addClass('overflow-hidden');
        }

        /**
         * remove scrollable navbar
         */
        function lanaRemoveScrollableNavbar() {

            /** remove scrollable from navbar */
            $lanaPetMainNavbar.removeClass('navbar-scroll');
            jQuery('body').removeClass('overflow-hidden');
        }

        /**
         * if check navbar sticky
         * then attach functions
         */
        if ($lanaPetMainNavbar.hasClass('navbar-sticky')) {

            /** add sticky navbar on document ready */
            lanaAddStickyNavbar();

            /** add sticky navbar on scroll */
            jQuery(window).on('scroll', lanaAddStickyNavbar);

            /** scrollable navbar */
            $lanaPetMainNavbar.find('#lana-navbar')
                .on('shown.bs.collapse', lanaAddScrollableNavbar)
                .on('hidden.bs.collapse', lanaRemoveScrollableNavbar);

            /** scrollable navbar */
            $lanaPetMainNavbar.find('#lana-navbar > ul')
                .on('show.smapi', lanaAddScrollableNavbar)
                .on('hide.smapi', lanaRemoveScrollableNavbar);
        }
    }

    /**
     * Swiper helper function
     * visible slide init
     */
    function lanaSwiperVisibleSlideInit() {
        var swiper = this,
            $slider = jQuery(swiper.$el);

        $slider.find('.swiper-slide').on('focus focusin', function () {
            swiper.slideTo(jQuery(this).index());
        });
    }

    /**
     * Swiper helper function
     * visible slide
     */
    function lanaSwiperVisibleSlide() {
        var swiper = this,
            $slider = jQuery(swiper.$el),
            slidesCount,
            currentIndex = swiper.realIndex;

        /** check breakpoints */
        jQuery.each(swiper.params.breakpoints, function (breakpoint, breakpointArgs) {
            if (swiper.currentBreakpoint >= breakpoint) {
                slidesCount = breakpointArgs.slidesPerView;
            }
        });

        /** check max */
        if ('max' === swiper.currentBreakpoint) {
            slidesCount = swiper.params.slidesPerView;
        }

        $slider.find('.swiper-slide')
            /** remove all visible class */
            .removeClass('swiper-slide-visible')
            /** add filtered visible class */
            .slice(currentIndex, (currentIndex + slidesCount)).addClass('swiper-slide-visible');
    }

    /**
     * Header
     * Swiper Carousel
     */
    new Swiper('.header-carousel.swiper-container', {
        simulateTouch: false,
        effect: 'fade',
        speed: 750,
        navigation: {
            nextEl: '.swiper-text-button-next',
            prevEl: '.swiper-text-button-prev'
        },
        pagination: {
            el: '.swiper-pagination',
            clickable: true,
            bulletClass: 'swiper-pagination-line',
            bulletActiveClass: 'swiper-pagination-line-active'
        }
    });

    /**
     * Pets
     * Swiper Carousel
     */
    new Swiper('.pets-carousel.swiper-container', {
        slidesPerView: 3,
        simulateTouch: false,
        navigation: {
            nextEl: '.swiper-button-next',
            prevEl: '.swiper-button-prev'
        },
        pagination: {
            el: '.swiper-pagination',
            clickable: true,
            bulletClass: 'swiper-pagination-line',
            bulletActiveClass: 'swiper-pagination-line-active'
        },
        breakpoints: {
            992: {
                slidesPerView: 2
            },
            768: {
                slidesPerView: 1,
                simulateTouch: true
            }
        }
    });

    /**
     * Stories
     * Swiper Carousel
     */
    new Swiper('.stories-carousel.swiper-container', {
        slidesPerView: 3,
        simulateTouch: false,
        navigation: {
            nextEl: '.swiper-button-next',
            prevEl: '.swiper-button-prev'
        },
        pagination: {
            el: '.swiper-pagination',
            clickable: true,
            bulletClass: 'swiper-pagination-line',
            bulletActiveClass: 'swiper-pagination-line-active'
        },
        breakpoints: {
            992: {
                slidesPerView: 2
            },
            768: {
                slidesPerView: 1,
                simulateTouch: true
            }
        }
    });

    /**
     * Latest Posts
     * Swiper Carousel
     */
    if (jQuery('.latest-posts-carousel.swiper-container').length) {

        /** swiper init */
        new Swiper('.latest-posts-carousel.swiper-container', {
            init: false,
            slidesPerView: 1,
            simulateTouch: true,
            navigation: {
                nextEl: '.swiper-button-next',
                prevEl: '.swiper-button-prev'
            },
            breakpointsInverse: true,
            breakpoints: {
                768: {
                    slidesPerView: 2,
                    simulateTouch: true
                },
                992: {
                    slidesPerView: 3,
                    simulateTouch: false
                }
            }
        }).on('init', lanaSwiperVisibleSlideInit).on('init resize slideChange sliderMove touchMove touchMoveOpposite', lanaSwiperVisibleSlide).init();
    }

    /**
     * Partners
     * Swiper Carousel
     */
    new Swiper('.partners-carousel.swiper-container', {
        slidesPerView: 6,
        navigation: {
            nextEl: '.swiper-button-next',
            prevEl: '.swiper-button-prev'
        },
        breakpoints: {
            992: {
                slidesPerView: 3
            },
            768: {
                slidesPerView: 1
            }
        }
    });

    /**
     * Gallery
     * Magnific Popup
     */
    jQuery('.mfp-gallery').magnificPopup({
        delegate: '.image-link',
        type: 'image',
        gallery: {
            enabled: true
        }
    });

    /**
     * Post Gallery
     */
    new Swiper('.post.format-gallery .post-gallery', {
        spaceBetween: 10,
        loop: true,
        speed: 1000,
        autoplay: {
            delay: 3000,
        },
        navigation: {
            nextEl: '.swiper-button-next',
            prevEl: '.swiper-button-prev'
        }
    });

    /**
     * Swiper Gallery
     */
    new Swiper('.gallery-image', {
        spaceBetween: 10,
        thumbs: {
            swiper: new Swiper('.gallery-thumbnails', {
                spaceBetween: 10,
                navigation: {
                    nextEl: '.swiper-button-next',
                    prevEl: '.swiper-button-prev'
                },
                slidesPerView: 4,
                freeMode: true,
                watchSlidesVisibility: true,
                watchSlidesProgress: true
            })
        }
    });

    /**
     * Swiper Gallery
     * with Magnific Popup
     */
    jQuery('.gallery-image').magnificPopup({
        delegate: '.image-link',
        type: 'image',
        gallery: {
            enabled: true
        }
    });
});