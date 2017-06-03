function cible_li(){
    var liste_li = document.querySelectorAll("#menu li");    
    for ( var i = 0; i < liste_li.length ; i++){    
    var par = liste_li[i].parentNode;   
    var lie = document.createElement("a");    
    lie.setAttribute("href", liste_li[i].getElementsByTagName('a')[0].getAttribute("href"));   
    lie.appendChild(liste_li[i]);  
    par.appendChild(lie);
    }
}

cible_li();

