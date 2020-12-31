@extends('admin.layouts.layout')

@section('css')
@endsection

@section('content')
<div class="row wrapper border-bottom white-bg page-heading">
    <div class="col-lg-12">
        <h3 class="font-weight-bold mt-3">New Appointment Form <a href="{{ route('list.appointment') }}" class="btn btn-sm btn-primary float-right">All Appoints</a></h3>
    </div>
</div>
<div class="wrapper wrapper-content">
    <div class="ibox-content">
        <form action="{{ route('store.appointment') }}" method="POST" enctype="multipart/form-data">
            @csrf
            <div class="row">
                <div class="col-md-6">
                    <div class="form-group">
                        <label for="">Patient Name</label>
                        <input type="text" class="form-control @error('name') is-invalid @enderror" name="name" value="{{ old('name') }}" placeholder="enter patient name" required>
                        @error('name')
                            <span class="invalid-feedback" role="alert">
                                <strong>{{ $message }}</strong>
                            </span>
                        @enderror
                    </div>
                    <div class="form-group">
                        <label for="">Patient Age</label>
                        <input type="text" class="form-control @error('age') is-invalid @enderror" name="age" value="{{ old('age') }}" placeholder="enter patient age" required>
                        @error('age')
                            <span class="invalid-feedback" role="alert">
                                <strong>{{ $message }}</strong>
                            </span>
                        @enderror
                    </div>
                    <div class="form-group">
                        <label for="">Phone Number</label>
                        <input type="text" class="form-control @error('age') is-invalid @enderror" name="phone" value="{{ old('age') }}" placeholder="enter patient age" required>
                        @error('age')
                            <span class="invalid-feedback" role="alert">
                                <strong>{{ $message }}</strong>
                            </span>
                        @enderror
                    </div>
                    <div class="form-group">
                        <label for="">Email (Optional)</label>
                        <input type="email" class="form-control @error('email') is-invalid @enderror" name="email" value="{{ old('email') }}" placeholder="enter email">
                        @error('email')
                            <span class="invalid-feedback" role="alert">
                                <strong>{{ $message }}</strong>
                            </span>
                        @enderror
                    </div>
                    <div class="form-group">
                        <label for="">Appointment Date</label>
                        <input type="date" class="form-control @error('appoint_date') is-invalid @enderror" name="appoint_date" value="{{ old('appoint_date') }}" required>
                        @error('appoint_date')
                            <span class="invalid-feedback" role="alert">
                                <strong>{{ $message }}</strong>
                            </span>
                        @enderror
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="form-group">
                        <label for="">Department</label>
                        <select name="department_id" id="" class="form-control @error('department_id') is-invalid @enderror" value="{{ old('department_id') }}" required>
                            <option value="">select department</option>
                            @foreach($departments as $department)
                            <option value="{{ $department->department_id }}">{{ $department->name }}</option>
                            @endforeach
                        </select>
                        @error('department_id')
                            <span class="invalid-feedback" role="alert">
                                <strong>{{ $message }}</strong>
                            </span>
                        @enderror
                    </div>
                    <div class="form-group">
                        <label for="">Doctor</label>
                        <select name="doc_id" id="" name="doc_id" class="form-control @error('doc_id') is-invalid @enderror" value="{{ old('doc_id') }}" required>
                            <option value="">select doctor</option>
                            @foreach($doctors as $doctor)

                            @endforeach
                        </select>
                        @error('doc_id')
                            <span class="invalid-feedback" role="alert">
                                <strong>{{ $message }}</strong>
                            </span>
                        @enderror
                    </div>
                    <div class="form-group">
                        <select name="doctor_shown" id="doctor_shown" class="form-control @error('doctor_shown') is-invalid @enderror" value="{{ old('doctor_shown') }}">
                            <option value="">আগে কি কোনো ডাক্তার দেখিয়েছেন?</option>
                            <option value="No">No</option>
                            <option value="Yes">Yes</option>
                        </select>
                        @error('doctor_shown')
                            <span class="invalid-feedback" role="alert">
                                <strong>{{ $message }}</strong>
                            </span>
                        @enderror
                    </div>
                    <div class="form-group yes" style="display: none;">
                        <input type="text" class="form-control @error('past_doctor') is-invalid @enderror" name="past_doctor" value="{{ old('past_doctor') }}" placeholder="Past doctor name (আগের ডাক্তারের নাম)">
                        @error('past_doctor')
                            <span class="invalid-feedback" role="alert">
                                <strong>{{ $message }}</strong>
                            </span>
                        @enderror
                    </div>
                    <!--<div class="form-group">-->
                    <!--    <label for="">Time</label>-->
                    <!--    <input type="time" class="form-control @error('time') is-invalid @enderror" name="time" value="{{ old('time') }}" placeholder="enter time" required>-->
                    <!--    @error('time')-->
                    <!--        <span class="invalid-feedback" role="alert">-->
                    <!--            <strong>{{ $message }}</strong>-->
                    <!--        </span>-->
                    <!--    @enderror-->
                    <!--</div>-->
                </div>
                <div class="col-md-12 form-group">
                    <label>Appoinment Description (optional)</label>
                    <textarea class="form-control @error('details') is-invalid @enderror" name="details" value="{{ old('details') }}" id="editor" placeholder="text your appoinment description"></textarea>
                    @error('details')
                        <span class="invalid-feedback" role="alert">
                            <strong>{{ $message }}</strong>
                        </span>
                    @enderror

                    <input type="hidden" name="entry_date" value="{{ date('d-m-Y') }}">
                    <input type="hidden" name="month" value="{{ date('F') }}">
                    <input type="hidden" name="year" value="{{ date('Y') }}">

                    <button type="submit" class="btn btn-sm btn-block btn-success mt-3">New Appoint</button>
                </div>
            </div>
        </form>
    </div>
</div>

@endsection

@section('js')
    <!-- Mainly scripts -->
    <script src="{{ asset('backend/js/jquery-3.1.1.min.js') }}"></script>
    <script src="{{ asset('backend/js/popper.min.js') }}"></script>
    <script src="{{ asset('backend/js/bootstrap.js') }}"></script>
<script type="text/javascript">
    $(document).on('change','#doctor_shown',function(){
        var doctor_shown = $(this).val();
        if(doctor_shown == 'Yes'){
            $('.yes').show();
        }else{
            $('.yes').hide();
        }
    });
</script>
{{-- ckeditor --}}
<script src="https://cdn.ckeditor.com/4.15.0/standard/ckeditor.js"></script>
<script>
    CKEDITOR.replace( 'editor');

    $(document).ready(function(){

        $('select[name="department_id"]').on('change', function(){
            var department_id = $(this).val();
            if(department_id) {
                $.ajax({
                    url: "{{  url('get/department/') }}/"+department_id,
                    type:"GET",
                    dataType:"json",
                    success:function(data) {
                    $("select[name='doc_id']").empty();
                    $.each(data, function(key,value){
                            $('select[name="doc_id"]').append('<option value="'+ value.doc_id +'">' + value.name + '</option>');
                    })
                    },
                });
            } else {
            $('select[name="doc_id"]').append('<option>Select Doctor First</option>');
            }
        });
    });
</script>
@endsection
