@extends('layouts/app')

@section('content')

	@include('admin.categories.errors');
	
	<div class="panel panel-default">
		<div class="panel-heading">
			Edit post: {{ $post->title}}
		</div>
		<div class="panel-body">
			<form action="{{ route('post.update', ['id'=> $post->id]) }}" method="post" enctype="multipart/form-data">
				{{ csrf_field() }}
				<div class="form-group">
					<label for="title">Title</label>
					<input type="text" name="title" class="form-control" value="{{ $post->title}}">
				</div>

				<div class="form-group">
					<label for="featured">Featured Image</label>
					<input type="file" name="featured" class="form-control">
				</div>

				<div class="form-group">
					<label for="categories">Select a category</label>
					<select class="form-control" name="category_id" id="category">
						@foreach($categories as $category)
							<option value="{{ $category->id }}" @if($category->id == $post->category_id) selected="selected" @endif >
								{{ $category->name }}
							</option>
						@endforeach
					</select>
				</div>

				<div class="form-group">
					<label for="tags">Select tags</label>
					@foreach($tags as $tag)
					<div class="checkbox">
  						<label><input type="checkbox" value="{{ $tag->id }}" name="tags[]" 
						@foreach($post->tags as $t)
							@if($tag->id == $t->id)
								checked
							@endif
						@endforeach
  						>{{ $tag->name }}</label>
					</div>
					@endforeach
				</div>

				<div class="form-group">
					<label for="featured">Content</label>
					<textarea name="content" id="content" cols="5" rows="5" class="form-control" 
					>{{ $post->content}}</textarea>
				</div>

				<div class="form-group">
					<div class="text-center">
						<button class="btn btn-success" type="submit">Update post</button>
					</div>
				</div>
			</form>
		</div>
	</div>
@stop

@section('styles')

 <link href="http://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.9/summernote.css" rel="stylesheet">

@stop

@section('scripts')
 <script src="http://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.9/summernote.js"></script>
<script>
	$(document).ready(function() {
		$('#content').summernote();
	});
</script>
@stop