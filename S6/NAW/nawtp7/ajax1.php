<!DOCTYPE html>
<html>
<head lang="en">
    <meta charset="UTF-8">
    <title>Test ajax1</title>
    <script>
        function 1sec(){
            alert();
        }
    
        function 5sec(){
            alert();
        }
    
    </script>
</head>
<body onload="1sec()">
    <label><input type="button" name="1sec" value="+1s" onclick="1sec()" /></label>
    <label><input type="button" name="5sec" value="+5s" onclick="5sec()" /></label>
    
    <div id="date">
        
    </div>
</body>
</html>