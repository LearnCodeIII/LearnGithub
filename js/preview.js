addEventListener("click",function(event){
    // 獲得click element元素的backgroundcolor
    let bgColor = event.path[0].getAttribute('style')
    let changeColor = bgColor.slice(bgColor.length-7,bgColor.length);


    let classSelector = event.path[0].classList[1];
    let x;

    let color1 = document.getElementsByClassName('color1')[0]
    let color2 = document.getElementsByClassName('color2')[0];
    let color3 = document.getElementsByClassName('color3')[0];
    let color4_1 = document.getElementsByClassName('color4')[0];
    let color4_2 = document.getElementsByClassName('color4')[1];

    switch (classSelector) {
        case 'box1':
            x=color1;
            x.setAttribute("style", `background:${changeColor}`); 
            break;
        case 'box2':
            x=color2;
            x.setAttribute("style", `background:${changeColor}`); 
            break;
        case 'box3':
            x=color3;
            x.setAttribute("style", `color:${changeColor}`); 
            break;
        case 'box4':
            color4_1.setAttribute("style", `color:${changeColor}`); 
            color4_2.setAttribute("style", `color:${changeColor}`); 
            break;
    }
})