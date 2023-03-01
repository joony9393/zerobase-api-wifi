const btn = document.querySelectorAll(".btn_history_delete");

const delete_button = (e)=>{
    e.preventDefault();
    console.log(e.target);
    window.location.href = "../../Screen/History/history.jsp?id="+e.target.id;
}

const main= ()=>{
    btn.forEach(x=>x.addEventListener("click",delete_button));
}

main();