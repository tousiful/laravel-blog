@extends('layouts/app')

@section('content')

	@include('admin.categories.errors');
	
	<div class="panel panel-default">
		<div class="panel-heading">
			Update tag: {{ $tag->name }}
		</div>
		<div class="panel-body">
			<form action="{{ route('tag.update', ['id' => $tag->id]) }}" method="post">
				{{ csrf_field() }}
				<div class="form-group">
					<label for="name">Name</label>
					<input type="text" name="name" class="form-control" value="{{ $tag->name }}">
				</div>

				<div class="form-group">
					<div class="text-center">
						<button class="btn btn-success" type="submit">Update tag</button>
					</div>
				</div>
			</form>
		</div>
	</div>
@stop