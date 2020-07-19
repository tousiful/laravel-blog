@extends('layouts/app')

@section('content')

	@include('admin.categories.errors')
	
	<div class="panel panel-default">
		<div class="panel-heading">
			Create a new user
		</div>
		<div class="panel-body">
			<form action="{{ route('user.store') }}" method="post" enctype="multipart/form-data">
				{{ csrf_field() }}
				<div class="form-group">
					<label for="title">Name</label>
					<input type="text" name="name" class="form-control">
				</div>

				<div class="form-group">
					<label for="title">Email</label>
					<input type="email" name="email" class="form-control">
				</div>

				<div class="form-group">
					<div class="text-center">
						<button class="btn btn-success" type="submit">Store user</button>
					</div>
				</div>
			</form>
		</div>
	</div>
@stop