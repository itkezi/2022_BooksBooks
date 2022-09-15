document.addEventListener("DOMContentLoaded", () => {
  const detail_div = document.querySelector("div.hj-detail-otherbox");

  detail_div?.addEventListener("click", (e) => {
    const foreach = e.target;
    if (foreach.tagName === "DIV") {
      const div = foreach.closest("DIV");
      const contentid = div.dataset.contentid;
      document.location.href = `${rootPath}/detail/fooddetail/${contentid}`;
    }
  });
});
