<html>
<head>
    <title>Ma Galerie</title>
    <link href="galerie.css" type="text/css" rel="stylesheet"/>
    <script type="text/javascript">
        var choix;
        
        function setTab(){
            var choix2 = document.getElementsByName("option");
            for(var i= 0; i < choix2.length; i++){
                if(choix2[i].checked){
                    choix = choix2[i];
                }
            }
        }
        
        function init(){
            setTab();
            var cases= document.getElementsByClassName("base");
            for(var i = 0; i < 9; i++){
                setImg(cases[i]);
            }
        }
    
        function createXHR(){ var request = false;
           try
           {
             request = new ActiveXObject('Msxml2.XMLHTTP');
           }
           catch (err2)
           {
           try {
              request = new ActiveXObject('Microsoft.XMLHTTP');
           }
           catch (err3) {
              try {  request = new XMLHttpRequest();}
              catch (err1) { request = false;}
            }
           }
          return request;
        }
        
        function setImg(elem){
            var xhr = createXHR();
            var id = elem.getAttribute("id");

            xhr.onreadystatechange = function()
                {
                    if(xhr.readyState == 4)
                    {
                        if(xhr.status == 200)
                        {
                            
                                
                            document.getElementById("X" + id).innerHTML = xhr.responseText;
                        }
                        else
                        {
                        }
                    }
                };
                xhr.open("GET", "descrp/" + choix.value + ".html", true);
                xhr.send(null);
        }
        
        
    </script>
</head>
<body onload="init()">
    <?php
        include "option2.html";
    ?>
    
    <h1 id="title">Ma Galerie</h1>
    <table border="1pt" id="selection">
        <tbody>
            <tr>
                <td class="base" id="no" onclick="setImg(this)">Nord.Ouest</td >
                <td class="base" id="n" onclick="setImg(this)">Nord.</td>
                <td class="base" id="ne" onclick="setImg(this)">Nord.Est</td>
            </tr>
            <tr>
                <td class="base" id="o" onclick="setImg(this)">Ouest</td >
                <td class="base" id="c" onclick="setImg(this)">Centre.</td>
                <td class="base" id="e" onclick="setImg(this)">Est.</td>
            </tr>
            <tr>
                <td class="base" id="so" onclick="setImg(this)">Sud.Ouest</td >
                <td class="base" id="s" onclick="setImg(this)">Sud.</td>
                <td class="base" id="se" onclick="setImg(this)">Sud.Est</td>
            </tr>
        </tbody>
    </table>
    <div id="galerie">
    <table border="1">
        <tbody>
            <tr>
                <td id="Xno"></td>
                <td id="Xn"></td>
                <td id="Xne"></td>
            </tr>
            <tr>
                <td id="Xo"></td>
                <td id="Xc"></td>
                <td id="Xe"></td>
            </tr>
            <tr>
                <td id="Xso"></td>
                <td id="Xs"></td>
                <td  id="Xse"></td>
            </tr>
        </tbody>
    </table>
    </div>
</body>
</html>