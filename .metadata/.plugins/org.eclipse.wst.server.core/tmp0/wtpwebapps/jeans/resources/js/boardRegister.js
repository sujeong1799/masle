document.getElementById('trigger').addEventListener('click',()=>{
    document.getElementById('file').click();
})

// 정규표현식을 사용하여 생성자 함수를 만들기
// 실행파일 막기, 이미지파일인지 아닌지 체크
// fileUpload시 형식제한 함수

// 실행파일 막기 시~작
const regExp = new RegExp("\.(exe|sh|bat|msi|dll|js)$") // 실행파일 막기
const regExpImg = new RegExp("\.(jpg|jpeg|png|gif|bmp)$") // 이미지 파일 넣을 수 있는 애들
const maxSize = 1024*1024*20; // 20M보다 큰지 확인


// 첨부 가능한 파일인지 체크
function fileSizeValidation(fileName, fileSize){ 
    if(regExp.test(fileName)){ // 실행파일이면 리턴 0을 해라.
        return 0;
    }else if(fileSize > maxSize){ //파일 사이즈가 20M보다 크면 리턴 0해라
        return 0;
    }else{
        return 1;
    }

}


// 첨부 file에 따라서 체크하여 등록 가능한지 체크
document.addEventListener('change',(e)=>{
    console.log(e.target);
    if(e.target.id == 'files'){ // 첨부되지 말아야 하는 파일이 들어왔을때 전송되는 것을 방지시키기 위해서 버튼을 죽인다.
        document.getElementById('regBtn').disabled = false;
        const fileObject = document.getElementById('files').files; // 여러개가 들어오면 배열로 들어온다.
        console.log(fileObject);

        let div = document.getElementById('fileZone');
        div.innerHTML = '';
        let ul = `<ul>`;
        let isOk = 1; // fileSizeValidation의 통과 여부를 체크 위에 팡션 체크
        for(let file of fileObject){ // 배열로 들어온대요.
            let vaildResult = fileSizeValidation(file.name, file.size); // 파일의 결과를 vaildResult에 체크
            isOk *= vaildResult; // 모든 첨부파일의 결과가 1이면 통과고 0이면 0으로 바뀐다. 배열일 경우 한번 더 체크
            ul += `<li>`;
            // 업로드 가능 표시, 통과가 됐다면 1= ture, 0 = false
            // 업로드 가능이면 파란색, 불가능이면 빨간색 주고싶을때는 div를 별도로 넣어서 만드세요;
            ul += `<div> ${vaildResult ? '업로드 가능' : '업로드 불가능'}</div>`;
            ul += `${file.name}`;
            // 클래스 안에서 색을 넣고싶을때.
            ul += `<span class="badge bg-${vaildResult ? 'success' : 'danger'} rounded-pill">${file.size}Bytes</span></li>`;
        }
        ul += `</ul>`;
        div.innerHTML = ul;
        if(isOk == 0){ // 첨부불가 파일이 있다면
            document.getElementById('regBtn').disabled = false;
        }
    }
})