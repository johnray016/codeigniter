<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>CI Blog</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css" integrity="sha384-9gVQ4dYFwwWSjIDZnLEWnxCjeSWFphJiwGPXr1jddIhOegiu1FwO5qRGvFXOdJZ4" crossorigin="anonymous">
    <link rel="stylesheet" href="<?php echo base_url(); ?>/assets/css/style.css">
</head>
<body>
<div class="container">
<nav class="navbar navbar-expand-lg navbar-light bg-light">
  <a class="navbar-brand" href="<?php echo base_url(); ?>">CI Blog</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav mr-auto">
      <li class="nav-item active">
        <a class="nav-link" href="<?php echo base_url(); ?>">Home <span class="sr-only">(current)</span></a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="<?php echo base_url(); ?>about">About</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="<?php echo base_url(); ?>posts">Post</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="<?php echo base_url(); ?>categories">Categories</a>
      </li>
    </ul>
    <ul class="navbar-nav ml-auto list-group">
      <li class="nav-item">
        <a class="nav-link" href="<?php echo base_url(); ?>users/register">Register</a>
      </li>       
      <li class="nav-item">
        <a class="nav-link" href="<?php echo base_url(); ?>posts/create">Create Post</a>
      </li>       
       <li class="nav-item">
        <a class="nav-link" href="<?php echo base_url(); ?>categories/create">Create Category</a>
      </li>      
    </ul>
  </div>
</nav>

<!-- Check if there is flash messages -->

<?php if($this->session->flashdata('user_registered')):?>
  <?php echo '<p class="alert alert-success">'.$this->session->flashdata('user_registered').'</p>' ?>
<?php endif; ?>
<?php if($this->session->flashdata('post_created')):?>
  <?php echo '<p class="alert alert-success">'.$this->session->flashdata('post_created').'</p>' ?>
<?php endif; ?>
<?php if($this->session->flashdata('post_updated')):?>
  <?php echo '<p class="alert alert-success">'.$this->session->flashdata('post_updated').'</p>' ?>
<?php endif; ?>
<?php if($this->session->flashdata('category_created')):?>
  <?php echo '<p class="alert alert-success">'.$this->session->flashdata('category_created').'</p>' ?>
<?php endif; ?>
<?php if($this->session->flashdata('post_deleted')):?>
  <?php echo '<p class="alert alert-success">'.$this->session->flashdata('post_deleted').'</p>' ?>
<?php endif; ?>
