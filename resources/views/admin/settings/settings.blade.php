@extends('layouts/app')

@section('content')

	@include('admin.categories.errors')
	
	<div class="panel panel-default">
		<div class="panel-heading">
			Editing blog settings
		</div>
		<div class="panel-body">
			<form action="{{ route('settings.update') }}" method="post" enctype="multipart/form-data">
				{{ csrf_field() }}
				<div class="form-group">
					<label for="title">Site name</label>
					<input type="text" name="site_name" class="form-control" value="{{ $setting->site_name }}">
				</div>

				<div class="form-group">
					<label for="title">Contact email</label>
					<input type="email" name="contact_email" class="form-control" value="{{ $setting->contact_email }}"> 
				</div>
				<div class="form-group">
					<label for="title">Phone number</label>
					<input type="text" name="contact_number" class="form-control" value="{{ $setting->contact_number }}"> 
				</div>
				<div class="form-group">
					<label for="title">Address</label>
					<input type="text" name="address" class="form-control" value="{{ $setting->address }}"> 
				</div>


				<div class="form-group">
					<div class="text-center">
						<button class="btn btn-success" type="submit">Update site settings</button>
					</div>
				</div>
			</form>
		</div>
	</div>
@stop