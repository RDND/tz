<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>index.jsp</title>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/common.css"/>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/common.js" defer></script>
</head>
<body>
<script type="text/javascript">
    fetch('/api/numbs/1')
        .then(response => response.json())
        .then(data => {
            document.getElementById('base_number').innerHTML = data.value;
        })
        .catch(err => {
            console.error('An error occurred', err);
        });
</script>
<div class="container">
    <div class="row">
        <div class="col-sm-4">
            <div class="calc">
                Base Number: <span id="base_number"></span>
                <div class="form-group">
                    <label for="inp_1">Input First Number:</label>
                    <input type="number" class="form-control" id="inp_1" value=1>
                    <label for="inp_2">Input Second Number:</label>
                    <input type="number" class="form-control" id="inp_2" value=1>
                </div>
                <button onclick="plus()" class="greenButton">+</button>
                <button onclick="minus()" class="redButton">-</button>
            </div>
        </div>
    </div>
</div>
<div class="blinker" id="blinker"></div>
</body>
</html>
