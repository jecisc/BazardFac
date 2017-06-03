/*
 * Ceci est une ardoise JavaScript.
 *
 * Saisissez du code JavaScript, puis faites un clic droit ou sélectionnez à partir du menu Exécuter :
 * 1. Exécuter pour évaluer le texte sélectionné (Ctrl+R),
 * 2. Examiner pour mettre en place un objet Inspector sur le résultat (Ctrl+I), ou,
 * 3. Afficher pour insérer le résultat dans un commentaire après la sélection. (Ctrl+L)
 */

//Partie 1
console.log("Hello");
console.log(typeof(1));
console.log(typeof(true));
console.log(typeof('abcde')); 
console.log(typeof("abcde"));
console.log(typeof(0.0));
console.log(typeof('0.0'));
console.log(typeof([1,2,3]));
console.log(1=="1");
console.log(1==[1]);
console.log(1==[1,1]);
console.log(1==="1");
console.log(1===[1]);
console.log(1===[1,1]);
console.log('abcde'==="abcde");



// Partie 2
var tab= [1,2,3,4,5];
/*
var message= "Le tableau est: " + tab + " et la case 0 est " + tab[0];
alert(message);
*/
console.log(tab);
console.log(tab[0]);
console.log(tab[4]);
console.log(tab[5]);

function ajouteDebutEtFin(deb, fin) {
    tab.push(fin);
    tab.unshift(deb);
}
ajouteDebutEtFin( 0, 6);
console.log(tab); 

function afficherTab (tab){
   console.log( "{" + tab.join('|') + "}");
}

afficherTab(tab);

function occurrences (tab, carac){
    var cpt = 0;
    for (var i = 0 ; i < tab.length; i++){
        if (tab[i] === carac)
            cpt++;
    }
    console.log(cpt);

}

occurrences (tab, 1);

// Partie 3
var s = "test";

function capitalize (s){
    var carac = s.charAt(0);
    if (carac >= 'a' && carac <= 'z')
        return( (s.toUpperCase()).charAt(0) + s.slice(1, s.length)    );
    else
        return(s);
}

console.log(capitalize (s));

function decoupe (s){
    return s.split(' ');
    }
    
console.log((decoupe ("Testons cette fonction !")).join(';'));

// Partie 4
var t = [2,5,31,86];
t.nom = "test_attribut";
console.log(t.join(';') + " " +t.nom);


function afficherTab2 (tab){
    if (typeof(tab.nom) != undefined) {
       console.log(tab.nom + " : "); }
   console.log( "{" + tab.join('|') + "}");
}

afficherTab2(tab);
afficherTab2(t);

//Partie 5
function oafficherTab (){
   afficherTab2(this);
}

function oocurrence (carac) {
  occurrences(this,carac);
}

t.image = oafficherTab;
t.image();
t.compter= oocurrence;
t.compter(2); 

function orotationGauche(){
    var l = this.length-1;
    var aux = this[0];
    for (var i = 0; i <l; ++i){
        this[i] = this[i+1];
    }
    this[l] = aux;
        return this;
}

t.rotationGauche= orotationGauche;
afficherTab2(t.rotationGauche());

Array.prototype.image = oafficherTab;

Array.prototype.compter= oocurrence;

Array.prototype.rotationGauche= orotationGauche;

//Partie 6
//1
console.log(document.getElementById("section2").nodeName);


//2
console.log(document.getElementsByTagName("h2").length);


//3
var image= document.getElementsByTagName("img");
for(var i = 0; i < image.length; i++){
    console.log(image[i].src);
}


//4
var listDiv = document.getElementsByTagName("div");
for(var i = 0; i < listDiv.length; i++){
    console.log(listDiv[i].className);
}

//5
var idMessages = document.getElementById("messages");
console.log(idMessages.getElementsByTagName("p").length);

//6
console.log(idMessages.getElementsByTagName("p")[0].innerHTML);

//Partie 7

//1
var listeNoeud = document.querySelectorAll('#messages>p');
console.log(listeNoeud.length);

//2
var listeNoeud2 = document.querySelectorAll('*:first-child h2');
console.log(listeNoeud2.length);

//3
var listeNoeud3 = document.querySelectorAll('*:first-child p');
console.log(listeNoeud3.length);
for(var i = 0; i < listeNoeud3.length; i++){
    console.log(listeNoeud3[i].getAttribute("id"));
}

//Partie 8

//1
var image2 = document.getElementsByTagName("img");
image2[1].setAttribute("src", "http://www.fil.univ-lille1.fr/technoweb/images/technoweb-gris.png"
);

//2
var sectionsliste = document.querySelectorAll(".section");
sectionsliste[2].setAttribute("class", "section important");

//Partie 9

//1
var parag = document.createElement("p");
var text= document.createTextNode("Frigidaire !");
parag.appendChild(text);
document.getElementById("messages").appendChild(parag);

//2
var parag2 = document.createElement("p");
var text2= document.createTextNode("Problématique...");
parag2.appendChild(text2);
var idMessages2 = document.getElementById("messages");
var premierelm = idMessages2.firstChild;
document.getElementById("messages").insertBefore(parag2, premierelm);


//3
function printMessage (mess){
var parag2 = document.createElement("p");
var text2= document.createTextNode("Problématique...");
var idMessages2 = document.getElementById("messages");
var premierelm = idMessage2.firstChild;
parag2.appendChild(text2);
document.getElementById("messages").insertBefore(parag2, premierelm);
}

//4
function deleteMessage(){
var idMessages3 = document.getElementById("messages");
var premierelm3 = idMessages3.firstChild;
   if(premierelm3 != null)
       idMessages3.removeChild(premierelm3);
}


//5
function clearMessages(){
var idMessages4 = document.getElementById("messages");
var premierelm4 = idMessages4.firstChild;
    while(premierelm4 != null){
        deleteMessage();
        var idMessages4 = document.getElementById("messages");
        var premierelm4 = idMessages4.firstChild;
    }
}

clearMessages();

//Partie 10







