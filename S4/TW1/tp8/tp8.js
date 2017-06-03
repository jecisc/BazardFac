/*
 * Ceci est une ardoise JavaScript.
 *
 * Saisissez du code JavaScript, puis faites un clic droit ou sélectionnez à partir du menu Exécuter :
 * 1. Exécuter pour évaluer le texte sélectionné (Ctrl+R),
 * 2. Examiner pour mettre en place un objet Inspector sur le résultat (Ctrl+I), ou,
 * 3. Afficher pour insérer le résultat dans un commentaire après la sélection. (Ctrl+L)
 */

// Question 1

//1

var newline = document.createElement("p");
var quot = document.getElementsByTagName("blockquote")[0];
var texte = document.createTextNode('source');
var lien = document.createElement("a");
lien.setAttribute("href", quot.getAttribute('cite')); 
lien.appendChild(texte);
newline.appendChild(lien);
quot.appendChild(newline);

// Question 2

//1
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

//2

function evenementAffiche(){
    var sect = document.getElementsByTagName("section");
    for(var i = 0 ; i < sect.length ; i++ ){
        sect[i].style.display = "none";
    }
    document.querySelectorAll(this.getAttribute('herf')).style.display = "block";
}


function afficheSection(){
    var liste_li = document.querySelectorAll("#menu li");     
    for ( var i = 0; i < liste_li.length ; i++){  
        liste_li[i].addEventListenner('click', evenementAffiche(), false);
    }
}

afficheSection();





