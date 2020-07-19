@extends('layouts/app')

@section('content')
	<div class="panel panel-default">
		<div class="panel panel-heading">Trashed posts</div>
		<div class="panel-body">
			<table class="table table-hover">
				<thead>
					<tr>
						<th>
							Image
						</th>
						<th>
							Title
						</th>
						
						<th>
							Restore
						</th>
						<th>
							Delete
						</th>
					</tr>	
				</thead>
				@if($posts->count()>0)
				<tbody>
					@foreach($posts as $post)
					<tr>
						<td>
							<img src="{{$post->featured}}" alt="{{$post->title}}" width="50px" height="50px">
						</td>

						<td>
							{{ $post->title }}
						</td>
					
						
						<td>
							<a href="{{ route('post.restore', ['id' => $post->id ]) }}" class="btn btn-xs btn-success">restore</a>
						</td>
					
						<td>
							<a href="{{ route('post.kill', ['id' => $post->id]) }}" class="btn btn-xs btn-danger">delete</a>
						</td>
					</tr>
					@endforeach
					@else
					<tr>
						<th colspan="5" class="text-center">No trashed posts</th>
					</tr>
					@endif
				</tbody>
	        </table>
		</div>
	</div>
@stop