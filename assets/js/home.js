const title = "Complaint Management System";
const items = [
  {
    title: "Administrator",
    img: "admin.png",
    link: "http://localhost/cms/admin/",
  },
  {
    title: "Faculty",
    img: "faculty.png",
    link: "http://localhost/cms/user/",
  },
  {
    title: "Student",
    img: "student.png",
    link: "http://localhost/cms/user/",
  },
];

// Navigation Bar Title
document.getElementById("navbar-title").innerText = title;



// Home Page Cards
document.getElementById("card-items").innerHTML = items.map((v) => {
  return `<div class="col">
    <div class="card h-100" style="max-width: 18rem;">
      <img class="card-img-top" src="assets/img/${v.img}" alt="${v.title}" />
      <div class="card-body">
        <h5 class="card-title">${v.title}</h5>
        <a class="home-nav stretched-link" data-type="${v.title}" href="${v.link}"> </a>
      </div>
    </div>
    </div>`;
}).join("");
