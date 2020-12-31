@extends('admin.layouts.layout')

@section('css')
<link href="{{ asset('backend/css/plugins/dataTables/datatables.min.css') }}" rel="stylesheet">
@endsection

@section('content')
<div class="row wrapper border-bottom white-bg page-heading">
    <div class="col-lg-12">
        <h2 class="font-weight-bold">Deactive Posts List <a href="{{ route('new.post') }}" class="btn btn-sm btn-primary float-right">New Post</a></h2>
    </div>
</div>
<div class="wrapper wrapper-content">
	<div class="ibox-content">
		<div class="table-responsive">
            <table class="table table-striped table-bordered table-hover dataTables-example" >
               	<thead>
                    <tr>
                        <th>SL</th>
                        <th>Title</th>
                        <th>Slug</th>
                        <th>Category</th>
                        <th>Status</th>
                        <th>Image</th>
                        <th>Created Date</th>
                        <th>Action</th>
                    </tr>
                </thead>
                <tbody>
                @foreach($posts as $post)
                    <tr class="gradeX">
                        <td>{{ $count++ }}</td>
                        <td>{{ $post->title }}</td>
                        <td>{{ $post->slug }}</td>
                        <td>{{ $post->postcategory->name }}</td>
                        <td>
                            @if($post->status == 1)
                                <span class="badge badge-success">Active</span>
                            @else
                                <span class="badge badge-danger">Deactive</span>
                            @endif
                        </td>
                        <td><img src="{{ asset('../storage/app/public/'.$post->image) }}" alt="{{ $post->title }}" style="height: 30px;width:30px;"></td>
                        <td>{{ $post->created_at->diffForHumans() }}</td>
                        <td class="center">
                        	<a href="{{ route('edit.post',$post->post_id) }}" class="btn btn-primary btn-sm"><i class="fa fa-pencil"></i></a>
                            @if($post->status == 1)
                                <a href="{{ route('deactive.post',$post->post_id) }}" class="btn btn-sm btn-warning"><i class="fa fa-thumbs-down"></i></a>
                            @else
                                <a href="{{ route('active.post',$post->post_id) }}" class="btn btn-sm btn-success"><i class="fa fa-thumbs-up"></i></a>
                            @endif

                        	<a href="{{ route('delete.post',$post->post_id) }}" class="btn btn-danger btn-sm" id="delete"><i class="fa fa-trash-o"></i></a>
                        </td>
                    </tr>
                @endforeach
                </tbody>
                <tfoot>
                    <tr>
                        <th>SL</th>
                        <th>Title</th>
                        <th>Slug</th>
                        <th>Category</th>
                        <th>Status</th>
                        <th>Image</th>
                        <th>Created Date</th>
                        <th>Action</th>
                    </tr>
                </tfoot>
            </table>
        </div>
    </div>
</div>

@endsection

@section('js')
<script src="{{ asset('backend/js/plugins/dataTables/datatables.min.js') }}"></script>
<script src="{{ asset('backend/js/plugins/dataTables/dataTables.bootstrap4.min.js') }}"></script>
<script>
    //Hidding Button
    var coll = document.getElementsByClassName("collapsible");
    var i;

    for (i = 0; i < coll.length; i++) {
      coll[i].addEventListener("click", function() {
        this.classList.toggle("active");
        var content = this.nextElementSibling;
        if (content.style.display === "block") {
          content.style.display = "none";
        } else {
          content.style.display = "block";
        }
      });
    }
    $(document).ready(function(){
        $('.dataTables-example').DataTable({
            pageLength: 25,
            responsive: true,
            dom: '<"html5buttons"B>lTfgitp',
            buttons: [
                { extend: 'copy'},
                {extend: 'csv'},
                {extend: 'excel', title: 'Product department List'},
                {extend: 'pdf', title: 'Product department List'},

                {extend: 'print',
                 customize: function (win){
                        $(win.document.body).addClass('white-bg');
                        $(win.document.body).css('font-size', '10px');

                        $(win.document.body).find('table')
                                .addClass('compact')
                                .css('font-size', 'inherit');
                }
                }
            ]

        });

    });

</script>
@endsection
