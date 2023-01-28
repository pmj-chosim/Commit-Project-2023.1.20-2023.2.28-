const btnLeft = document.querySelector(".btnLeft");
const btnRight = document.querySelector(".btnRight");
const box = document.querySelector("#box");
const deg = 45; //회전할 각도 값 저장
let num = 0; //증가시킬 값 0으로 초기화

//btnLeft를 클릭할 때마다
btnLeft.addEventListener("click", e=>{
    e.preventDefault();
    num--;
    box.style.transform= `rotate(${num * deg}deg)`;
});

//btnRight를 클릭할 때마다
btnRight.addEventListener("click", e=>{
    e.preventDefault();
    num++;
    box.style.transform= `rotate(${num * deg}deg)`;
});