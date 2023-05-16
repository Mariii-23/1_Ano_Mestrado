<script setup lang="ts">
</script>

<template>
  <main>
      <div class="row">
        <div class="col-md-12">
            <h1>{{appName}}</h1>
        </div>
      </div><!-- /.row -->
    
      <div class="row">
          <nav class="col-12 navbar navbar-expand-lg navbar-light bg-light">
              {{ userName }}
              <!-- The collapsibe button -->
              <button class="navbar-toggler" type="button" 
                      data-bs-toggle="collapse" data-bs-target="#mycollapseNB">
                <span class="navbar-toggler-icon"></span>
              </button>
              <!-- The navbar options -->
              <div class="collapse navbar-collapse justify-content-end" id="mycollapseNB">
                <ul class="navbar-nav">
                  <li class="nav-item">
                    <a class="nav-link active" href="#">All games</a>
                  </li>
                  <li class="nav-item">
                    <a class="nav-link disabled" href="#">My games</a>
                  </li>
                  <li class="nav-item">
                    <a class="nav-link disabled">Add game</a>
                  </li>
                </ul>
             </div>
          </nav>
      </div><!-- /.row -->

      <div class="row">
        <div class="col-md-8">
          <table class="table table-striped">
            <thead><th>Game</th><th>Year</th><th>Platform</th></thead>
            <tbody>
              <tr><td>Game 1</td><td>1992</td><td>Megadrive</td></tr>
              <tr><td>Game 2</td><td>2017</td><td>PC</td></tr>
            </tbody>
          </table>

          <nav aria-label="Page navigation">
            <ul class="pagination justify-content-end">
              <li class="page-item">
                <a class="page-link" href="#" aria-label="Previous">
                  <span aria-hidden="true">&laquo;</span>
                </a>
              </li>
              <li class="page-item"><a class="page-link" href="#">1</a></li>
              <li class="page-item"><a class="page-link" href="#">2</a></li>
              <li class="page-item"><a class="page-link" href="#">3</a></li>
              <li class="page-item">
                <a class="page-link" href="#" aria-label="Next">
                  <span aria-hidden="true">&raquo;</span>
                </a>
              </li>
            </ul>
          </nav>
        </div><!-- /.col -->

        <div class="col-md-4">
          <form>
            <fieldset class="form-group">
              <legend>Filter</legend>
              <select class="form-select">
                <option selected>Year...</option>
              </select>
              <select class="form-select">
                <option>Platform...</option>
              </select>
            </fieldset>
          </form>    
        </div><!-- /.col -->
      </div><!-- /.row -->

      <footer class="row">
        <div class="col-md-12 text-center">
            Footer information &copy;
          </div><!-- /.col -->
      </footer><!-- /.row -->

  </main>
</template>