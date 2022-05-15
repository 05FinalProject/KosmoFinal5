<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html>
<head>
    <meta charset="utf-8">
    <title>Ryan Login</title>
    <link rel="stylesheet" href="/css/login.css">
</head>
<body>
    <form>
        <svg id="ryan" viewBox="0 0 120 120" xmlns="http://www.w3.org/2000/svg">
            <path d="M0,150 C0,65 120,65 120,150" fill="#f5f5f5" stroke="#000" stroke-width="2" />
            <g class="ears">
                <path d="M50,36 L50,35 C40,10 26,16 24,36 L24,40" fill="#f5f5f5 " stroke="#000" stroke-width="2" stroke-linecap="round" transform="rotate(-10,38,24)" />
                <path d="M50,36 L46,36 C34,12 30,24 26,40 L24,40" fill="#ffc0cb" transform="rotate(-10,38,24)" />
                <path d="M72,36 L72,35 C82,10 94,16 96,28 L98,42" fill="#f5f5f5 " stroke="#000" stroke-width="2" stroke-linecap="round" transform="rotate(10,82,24)" />
                <path d="M72,36 L76,37 C86,16 92,22 93,32 L94,41" fill="#ffc0cb" transform="rotate(10,82,24)" />
            </g>
            <circle cx="60" cy="60" r="38" fill="#f5f5f5 " stroke="#000" stroke-width="2" />
            <g d="eyes">
                <!-- left eye and eyebrow-->
                <line x1="37" x2="50" y1="46" y2="46" stroke="#000" stroke-width="4" stroke-linecap="round" />

                <circle cx="44" cy="55" r="4" fill="#000" />
                <!-- right eye and eyebrow -->
                <line x1="70" x2="83" y1="46" y2="46" stroke="#000" stroke-width="4" stroke-linecap="round" />
                <circle cx="76" cy="55" r="4" fill="#000" />
            </g>
            <g class="muzzle">
                <polygon points="59,63.5,60,63.4,61,63.5,60,65" fill="#000" stroke="#000" stroke-width="7" stroke-linejoin="round" />
                <line x1="60" y1="65" x2="60" y2="72" stroke="black" stroke-width="2"/>
                <path d="M50,80 Q60,72 60,72" fill="none" stroke="black" stroke-width="2" stroke-linecap="round" />
                <path d="M70,80 Q60,72 60,72" fill="none" stroke="black" stroke-width="2" stroke-linecap="round" />
            </g>
            <path d="M45,105 C10,140 110,140 75,105" fill="#ffc0cb" />
        </svg>
        <input type="text" placeholder="email@domain.com">
        <input type="password" placeholder="Password" class="pass">
    </form>
    <script src="/js/login.js"></script>
</body>
</html>