    <section id="footer">
      <div class="bg-dark text-white p-2 fixed-bottom">
        Copyright © 2022 LMS All Rights Received | Powered by CSTGroupNo04
      </div>
    </section>

    <script
      src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
      integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
      crossorigin="anonymous"
    ></script>

    <script
      src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"
      integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49"
      crossorigin="anonymous"
    ></script>

    <script
      src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"
      integrity="sha384-smHYKdLADwkXOn1EmN1qk/HfnUcbVRZyYmZ4qpPea6sjB/pTJ0euyQp0Mk8ck+5T"
      crossorigin="anonymous"
    ></script>

    <script
      type="text/javascript"
      charset="utf8"
      src="https://cdn.datatables.net/1.12.1/js/jquery.dataTables.js"
    ></script>

    <script>
      // Get the current year for the copyright
      $("#year").text(new Date().getFullYear());

      var dropdown = document.getElementsByClassName("dropdown-btn1");
      var i;

      for (i = 0; i < dropdown.length; i++) {
        dropdown[i].addEventListener("click", function () {
          this.classList.toggle("active");
          var dropdownContent = this.nextElementSibling;
          if (dropdownContent.style.display === "block") {
            dropdownContent.style.display = "none";
          } else {
            dropdownContent.style.display = "block";
          }
        });
      }

      var dropdown = document.getElementsByClassName("dropdown-btn2");
      var j;

      for (j = 0; j < dropdown.length; j++) {
        dropdown[j].addEventListener("click", function () {
          this.classList.toggle("active");
          var dropdownContent = this.nextElementSibling;
          if (dropdownContent.style.display === "block") {
            dropdownContent.style.display = "none";
          } else {
            dropdownContent.style.display = "block";
          }
        });
      }

      $(document).ready(function () {
        var table = $("#example").DataTable({
          responsive: true,
          order: [[0, 'desc']],
          scrollX: true,
        });

        new $.fn.dataTable.FixedHeader(table);
      });
    </script>
  </body>
</html>
