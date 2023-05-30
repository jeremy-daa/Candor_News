<?php
  // Fetching all the Navbar Data
  require('./includes/nav.inc.php');
  
  $cat_id = "";
  
  // If we get article_id from URL
  if(isset($_GET['id'])) {

    // Store the article id in a variable
    $article_id =  $_GET['id'];
  }

  // If we get article_id from URL and it is null
  elseif ($_GET['id'] == '' && $_GET['id'] == null) {
    
    // Redirect to home page
    redirect('./index.php');
  }

  // If we dont get article_id from URL
  else {
    
    // Redirect to home page
    redirect('index.php');
  }

  // Article Query to fetch all data related to particular article
  $articleQuery = " SELECT category.category_name, category.category_id, category.category_color, article.*, author.*
                    FROM category, article, author
                    WHERE article.category_id = category.category_id
                    AND article.author_id = author.author_id
                    AND article.article_active = 1
                    AND article.article_id = {$article_id}";
  
  // Running Article Query
  $result = mysqli_query($con,$articleQuery);

  // If the Query failed
  if(!$result) {
    
    // Redirected to home page
    redirect('./index.php');
  }

  // Returns the number of rows from the result retrieved.
  $row = mysqli_num_rows($result);
  
  // If query has any result (records) => If article is present
  if($row > 0) {
    
    // Fetching the data of particular record as an Associative Array
    while($data = mysqli_fetch_assoc($result)) {
      
      // Storing the article data in variables
      $cat_id = $data['category_id'];
      $category_name = $data['category_name'];
      $category_color = $data['category_color'];
      $article_title = $data['article_title'];
      $article_image = $data['article_image'];
      $article_desc = $data['article_description'];
      $article_date = $data['article_date'];
      $author_name = $data['author_name'];
      
      // Article date is updated to a timestamp 
      $article_date = strtotime($article_date);
      
?>
<!--  Article Page Container  -->
<section class="article">
  <div class="container" style="max-width:850px">
    <div class="page-container">
      <!-- Container that stores the article -->
      <article class="card1">

        <!-- Article Title -->
        <h1 class="article-heading">
          <?php
          echo $article_title;
          ?>
        </h1>

        <!-- Article Image -->
        <img src="./assets/images/articles/<?php echo $article_image; ?>" class="article-image" />

        <!-- Container that stores author name, date and category name -->
        <div class="meta">

          <!-- Author Name -->
          <div class="author">
            <i class="fas fa-user-alt"></i><?php echo $author_name; ?>
          </div>

          <!-- Article Publish Date -->
          <div class="date">
            <i class="fas fa-calendar-alt"></i>
            <?php
              echo date("d M Y",$article_date);
            ?>
          </div>

          <!-- Category Name -->
          <div class="tag <?php echo $category_color;?>">
            <?php
              echo $category_name;
            ?>
          </div>
        </div>

        <!-- Article Description -->
        <div class="article-content">
          <p>
            <?php
              echo $article_desc;
            ?>
          </p>
        </div>

        <!-- Container that stores the buttons -->
        <?php
            }
          }

          // If article is not present
          else {
            redirect('index.php');
          }
        ?>
      </article>
    </div>
  </div>
</section>

<?php

  // Fetching all the Footer Data
  require('./includes/footer.inc.php');
?>