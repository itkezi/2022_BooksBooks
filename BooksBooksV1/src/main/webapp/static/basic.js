/**
 *
 */

document.addEventListener("DOMContentLoaded", () => {
  const modal_box = document.querySelector("div.modal-result");
  // div.modal-result에 포함된 요소중에서 div.search-content를 가져와라
  const modal_content = modal_box.querySelector("div.search-content");

  const inputs = document.querySelectorAll("input");
  const desc = document.querySelector("textarea");

  const input_index = {
    isbn: 0,
    image: 1,
    title: 2,
    author: 3,
    publisher: 4,
    description: 5,
    link: 6,
  };

  // 정규식 문법
  // 문자열 중에서 tag 문자열을 무조건 삭제(제거)하기 위한 Pattern
  const extractTextPattern = /(<([^>]+)>)/gi;

  const book_isbn = document.querySelector("input#isbn");
  const book_title = document.querySelector("input#title");

  const btn_save = document.querySelector("button.book-save");

  /*
	        input event
	        input tag 에 키보드로 문자를 입력할때마다 발생하는 event
	        */
  // if(book_isbn) 을 실행하여 book_isbn 있으면 addEventListener 를 부착하고
  // 만약 book_isbn 객체가 없으면 오류를 발생시키지 말고 실행을 중단하리
  book_isbn?.addEventListener("input", (e) => {
    const isbn = e.target.value;
    if (isbn.length >= 13) {
      alert(isbn);
    }
  });

  book_title?.addEventListener("keypress", (e) => {
    if (e.keyCode === 13) {
      // alert(e.target.value);
      fetch(`${rootPath}/search?title=${e.target.value}`)
        .then((res) => res.text())
        .then((result) => {
          modal_box.style.display = "block";
          modal_content.innerHTML = result;
        });
    }
  }); // end book_title

  modal_box?.addEventListener("click", (tb) => {
    // table의 click event가 발생하면 가장 내부의 tag 정보를 추출하기
    const td = tb.target;
    if (td.tagName === "TD") {
      // td를 감싸고 있는 가장 가까운 영역의 tr을 추출하기
      const tr = td.closest("TR");
      // 추출된 tr의 속성중에 data-isbn으로 설정된 속성의 값을 추출하기
      const codes = tr.dataset.isbn; // ?.split(" ");
      //   if (codes.length > 1) {
      fetch(`${rootPath}/${codes}/result`)
        .then((res) => res.json())
        .then((result) => {
          inputs[input_index.isbn].value = result.isbn;
          inputs[input_index.title].value = result.title;
          inputs[input_index.author].value = result.author;
          inputs[input_index.publisher].value = result.publisher;
          // inputs[input_index.price].value = result.price;
          inputs[input_index.link].value = result.link;
          inputs[input_index.image].value = result.image;
          inputs[input_index.description].value = result.description.replace(
            extractTextPattern,
            ""
          );
          // desc.value = result.description.replace(extractTextPattern, "");
          modal_box.style.display = "none";
        });
      //   } else {
      //     alert("ISBN 코드를 찾을 수 없음");
      //   }
    }
  });

  btn_save?.addEventListener("click", (btn) => {
    const isbn = inputs[input_index.isbn];
    const title = inputs[input_index.title];
    const author = inputs[input_index.author];
    const publisher = inputs[input_index.publisher];

    if (isbn?.value === "") {
      // alert("ISBN은 반드시 입력하세요");
      isbn.focus();
      return false;
    }

    if (title?.value === "") {
      // alert("책 제목은 반드시 입력하세요");
      title.focus();
      return false;
    }
    if (author?.value === "") {
      // alert("저자는 반드시 입력하세요");
      author.focus();
      return false;
    }
    if (publisher?.value === "") {
      // alert("출판사는 반드시 입력하세요");
      publisher.focus();
      return false;
    }

    // click(btn) event가 지금 발생한(currentTarget) tag에서 가장 가까운(closest) "FORM"을 추출하기
    // 그리고 submit 하기
    const form = btn.currentTarget.closest("FORM");
    form.submit();
  });
}); // End ContentLoaded
