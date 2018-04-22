<h2><?php echo $post['title']; ?></h2>
<small class="post-date">Posted on: <?php echo $post['created_at'] ?></small>
            <img src="<?php echo site_url(); ?>assets/images/posts/<?php echo $post['post_image'] ?>" class="img-fluid card">
<div class="post-body">
    <p><?php echo $post['body']; ?></p>
</div>
<hr>
<a href="<?php echo base_url(); ?>posts/edit/<?php echo $post['slug']?>" class="btn btn-info">Edit</a>
<?php echo form_open('/posts/delete/'.$post['id']); ?>
    <input type="submit" value="delete" class="btn btn-danger">
<?php echo form_close(); ?>
<hr>
<h3>Comments</h3>
<?php if($comments): ?>
    <?php foreach($comments as $comment): ?>
        <div class="card bg-light p-3"> 
            <h5><?php echo $comment['body']; ?> [by <strong><?php echo $comment['name']; ?></strong>]</h5>
         </div>    <br>
    <?php endforeach; ?>
<?php else : ?>
    <p>No cmments to display.</p>
<?php endif; ?>
<hr>
<h3>Add Comment</h3>
<?php echo validation_errors(); ?>
<?php echo form_open('comments/create/'.$post['id']); ?>
    <div class="form-group">
        <label>Name</label>
        <input type="text" name="name" class="form-control">
    </div>
    <div class="form-group">
        <label>Email</label>
        <input type="email" name="email" class="form-control">
    </div>
    <div class="form-group">
        <label>Body</label>
        <textarea name="body" class="form-control"></textarea>
    </div>
    <input type="hidden" name="slug" value="<?php echo $post['slug']; ?>">
    <button class="btn btn-primary" type="submit">Submit</button>
<?php echo form_close(); ?>

