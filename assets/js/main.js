let toggle = (ID)=>{
let item = document.getElementById(ID);
let faClose = document.querySelector('header .fa-close');
if(item.style.display === '' || item.style.display === 'none'){
  item.style.display = 'block';
 

 
 
}
else{
  item.style.display = 'none';
}
};