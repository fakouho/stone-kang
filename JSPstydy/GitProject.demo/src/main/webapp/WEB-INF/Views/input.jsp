<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>운동 정보 입력</title>
    <style>
        /* 여기에 CSS 코드를 붙여넣으세요 */
        body {
            align-items: center;
            background-image: url("./join.jpg");
            opacity: 95%;
            background-attachment: fixed;
            background-position: center;
            background-repeat: no-repeat;
            background-size: 100% 100%;
            display: grid;
            height: 100vh;
            place-items: center;
        }
        .panel {
            width: 450px;
            max-width: 90%;
            height: auto; /* 변경됨 */
            background-repeat: no-repeat;
            background-position: top center;
            background-size: 100% 200px;
            background-color: #f8f9fb;
            margin: 5% auto 0px;
            background: #333;
        }
        /* 다른 CSS 스타일은 여기에 추가하세요 */
        .panel-switch {
            text-align: center;
            margin-top: 30px;
        }
        .panel-switch button {
            display: inline-block;
            width: 100px;
            height: 40px;
            background: #f03699;
            margin: 0px 10px 50px;
            border: none;
            color: #fff;
            text-transform: uppercase;
            font-weight: 600;
            letter-spacing: 2px;
            font-size: 0.8em;
            transition: background-color 0.2s, color: 0.2s, opacity: 0.2s;
        }
        /* 아래는 입력 폼 스타일입니다 */
        form {
            padding: 50px;
        }
        form input[type="text"],
        form input[type="password"],
        form input[type="submit"] {
            width: 100%;
            padding: 10px;
            margin: 10px 0;
            border: none;
            border-radius: 5px;
            box-sizing: border-box;
        }
        form input[type="submit"] {
            background-color: #f03699;
            color: white;
            cursor: pointer;
            transition: background-color 0.3s;
        }
        form input[type="submit"]:hover {
            background-color: #b52773;
        }
    </style>
</head>
<body>
<form action="inputService"></form>
    <div>
        <div class="panel shadow1">
            <form class="login-form" action="InputEx.do" method="post">
                <h1 class="animated fadeInUp animate1" id="title-login">운동 정보 입력</h1>
                <fieldset id="login-fieldset">
                    <input type="text" name="ex_name" placeholder="운동명" required><br>
                    <input type="text" name="ex_date" placeholder="운동 완료 연도/날짜 (YYYY-MM-DD)" required><br>
                    <input type="text" name="ex_done" placeholder="운동 완료 여부" required><br>
                    <input type="text" name="ex_reps" placeholder="반복 횟수" required><br>
                    <input type="text" name="ex_time" placeholder="운동 시간" required><br>
                </fieldset>
                <input type="submit" value="입력">
            </form>
        </div>
    </div>
</body>
</html>
