i=0;
function Ajouter(){
    const filmName=document.getElementById('film').value;
    const URL =document.getElementById('sitefilm').value;
    const NomRe=document.getElementById('nom_realisateur').value;
    var preview=document.getElementById('d');

    var newfilm = document.createElement('p');
    var link = document.createElement('a');
    var br = document.createElement('br');

    var textfilm=document.createTextNode(filmName);
    var textealisateur=document.createTextNode(NomRe);
    link.href=URL
    link.appendChild(textfilm)

    newfilm.appendChild(link);
    newfilm.appendChild(br);
    newfilm.appendChild(textealisateur)
    preview.insertBefore(newfilm,preview.firstChild)
    i++;
    document.getElementById('total').innerText=i;
}
function Annuler(){
    if (i>0){
        var preview =document.getElementById('d')
        preview.removeChild(preview.firstChild)
        i--;
        document.getElementById('total').innerText=i;
    }
}
