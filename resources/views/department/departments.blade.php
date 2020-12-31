@extends('layouts.app')
@section('title','Departments')
@section('content')
  <section style="background-image: url('public/front/images/coverimage1.jpg'); width: 100%; height: 260px;" data-stellar-background-ratio="0.5">
      <div class="container">
          <div class="row justify-content-center pb-3">
              <div class="col-md-8 text-center heading-section ftco-animate">
                  <h2 class="mb-4" style="line-height: 260px">@if($setting) {{ $setting->title }} @endif<span>Department</span></h2>
              </div>
          </div>
      </div>
  </section>
  <section class="">
        <div class="container">
        @foreach($departments as $department)
            <div class="mt-4 ftco-animate">
                <div class="row">
                    <div class="col-md-7">
                        <h2>{{ $department->name }}</h2>
                        <p>{!! $department->description !!}</p>
                    </div>
                    <div class="col-md-5">
                         <img align="center" class="img-fluid" src="{{ asset('../storage/app/public/'.$department->image) }}" alt="{{ $department->name }}">
                    </div>
                </div>
            </div>
            <hr>
        @endforeach
        </div>
  </section>
@endsection