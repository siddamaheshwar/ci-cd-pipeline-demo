
<!DOCTYPE html>
<html>
<head>
    <title>Calculator</title>
    <style>
        body {
            font-family: Arial;
            display: flex;
            justify-content: center;
            margin-top: 50px;
        }

        .calculator {
            width: 320px;
            padding: 15px;
            border-radius: 10px;
        }

        .light {
            background: #f1f1f1;
            color: black;
        }

        .dark {
            background: #1e1e2f;
            color: white;
        }

        .display {
            width: 100%;
            height: 60px;
            font-size: 24px;
            margin-bottom: 15px;
            text-align: right;
            padding: 10px;
        }

        . buttons {
            display: grid;
            grid-template-columns: repeat (4, 1fr);
            gap: 10px;
        }

        button {
            height: 60px;
            font-size: 18px;
            cursor: pointer;
        }

        .equal {
            grid-column: span 2;
            background: blue;
            color: white;
        }

        .scientific {
            display: none;
        }
    </style>
</head>

<body>

<div id="calc" class="calculator light">

    <!-- DROPDOWNS -->
    <select id="mode" onchange="changeMode()">
        <option value="standard">Standard</option>
        <option value="scientific">Scientific</option>
    </select>

    <select id="theme" onchange="changeTheme()">
        <option value="light">Light</option>
        <option value="dark">Dark</option>
    </select>

    <!-- DISPLAY -->
    <input type="text" id="display" class="display" value="0" readonly>

    <!-- BUTTONS -->
    <div class="buttons">

        <button onclick="clearDisplay()">C</button>
        <button onclick="backspace()">←</button>
        <button onclick="append('%')">%</button>
        <button onclick="append('/')">/</button>

        <button onclick="append('7')">7</button>
        <button onclick="append('8')">8</button>
        <button onclick="append('9')">9</button>
        <button onclick="append('*')">*</button>

        <button onclick="append('4')">4</button>
        <button onclick="append('5')">5</button>
        <button onclick="append('6')">6</button>
        <button onclick="append('-')">-</button>

        <button onclick="append('1')">1</button>
        <button onclick="append('2')">2</button>
        <button onclick="append('3')">3</button>
        <button onclick="append('+')">+</button>

        <!-- Scientific Buttons -->
        <button class="scientific" onclick="append('Math.sqrt(')">√</button>
        <button class="scientific" onclick="append('Math.pow(')">pow</button>
        <button class="scientific" onclick="append('Math.log(')">ln</button>

        <button onclick="append('.')">.</button>
        <button onclick="append('0')">0</button>
        <button class="equal" onclick="calculate()">=</button>

    </div>
</div>

<script>
    function append(val) {
        let display = document.getElementById("display");
        if (display.value === "0") display.value = val;
        else display.value += val;
    }

    function clearDisplay() {
        document.getElementById("display").value = "0";
    }

    function backspace() {
        let d = document.getElementById("display");
        d.value = d.value.slice(0, -1) || "0";
    }

    function calculate() {
        try {
            document.getElementById("display").value = eval(document.getElementById("display").value);
        } catch {
            alert("Invalid Expression");
        }
    }

    function changeTheme() {
        let theme = document.getElementById("theme").value;
        let calc = document.getElementById("calc");

        calc.classList.remove("light", "dark");
        calc.classList.add(theme);
    }

    function changeMode() {
        let mode = document.getElementById("mode").value;
        let sciButtons = document.querySelectorAll(".scientific");

        sciButtons.forEach(btn => {
            btn.style.display = (mode === "scientific") ? "block" : "none";
        });
    }
</script>

</body>
</html>


