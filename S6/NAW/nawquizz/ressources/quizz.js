$(document).ready(
    
    function () { }
    
);

$.ajax({
    type: "GET",
    url: "ressources/citations.xml",
    dataType: "xml",
    success: function (xml) {
        $(xml).find('citation').each(
            function () {
                var auteur = $(this).find("auteur").text();
                var citation = $(this).find("texte").text();
                //var theme = $(this).find("theme").text();
                //var motcle = $(this).find("motcle").text();
                //var ouvrage = $(this).find("ouvrage").text();
                var citations = new Object();
                citations[auteur] = citation;
            }
        );
    }
}
      );

$.ajax2({
    type: "GET",
    url: "ressources/auteurs.xml",
    dataType: "xml",
    success: function (xml) {
    }
}
);

function selectAuteur(array){
    var rand = Math.floor(Math.random() * array.length);
    $('<div class="citation"></div>').html('<blockquote>' + citations[rand] + '</blockquote><footer>' + auteur + '</footer>').appendTo("#div_xml");
}