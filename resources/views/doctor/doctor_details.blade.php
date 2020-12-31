@extends('layouts.app')
@section('title','Doctor |'.$doctor->name)
@section('content')
<section class="ftco-section">
  <div class="container">
    <div class="row">
      <div class="col-lg-8 ftco-animate">
          <div class="row">
              <div class="col-md-12">
                  <h2>{{ $doctor->name }}</h2>
              </div>
              <div class="col-md-6">
                  <img class="img-fluid" src="{{ asset('../storage/app/public/'.$doctor->image) }}" alt="{{ $doctor->title }}" draggable="false"  class="img-fluid justify-content-center">
              </div>
              <div class="col-md-6">
                 <p>{!! $doctor->description!!}</p>
              </div>
          </div>
        
          
        
        
        
      

      </div> <!-- .col-md-8 -->
      <div class="col-lg-4 sidebar ftco-animate">

      <div class="sidebar-box ftco-animate">
         <h3 class="heading-sidebar">Details of {{ $doctor->name }} || <small style="color:black;">{{ $doctor->sur_name }}</small></h3>
         <ul class="categories">
          {{--   <li><a href="tel:{{ $doctor->phone }}">{{ $doctor->phone }} <span>Call Now</span></a></li>
            <li><a>{{ $doctor->address }} <span>Address</span></a></li> --}}
           <table class="table">
              <tr>
                <td>Mobile :</td>
                <td> {{ $doctor->hotline }}</td>
              </tr>
              <tr>
                <td>Designation :</td>
                <td> {{ $doctor->designation }}</td>
              </tr>
              <tr>
                <td>Division :</td>
                <td> {{ $doctor->division->division_name }}</td>
              </tr>
              <tr>
                <td>District :</td>
                <td> {{ $doctor->district->district_name }}</td>
              </tr>
              <tr>
                <td>Thana :</td>
                <td> {{ $doctor->upzila->upzila_name }}</td>
              </tr>
              <tr>
                <td colspan="2"><a class="btn btn-info btn-block" href="{{ route('book_now',$doctor->slug) }}">Book Now</a></td>
              </tr>
            </table>

        </ul>
      </div>

      <div class="sidebar-box ftco-animate">
        <h3 class="heading-sidebar">More Doctors</h3>
        @foreach($doctors as $doctor_1) 
        <div class="block-21 mb-4 d-flex">
          <a class="blog-img mr-4" style="background-image: url({{ asset('../storage/app/public/'.$doctor_1->image) }})"></a>
          <div class="text">
          	<a href="{{ route('doctor.details',$doctor_1->slug) }}"><p>{{ $doctor_1->name }}</p>
            <h3 class="heading">{!! Str::words( $doctor_1->department->name, '12','..') !!} </h3></a>
            <div class="meta">
              <div><a href="#"><span class="icon-calendar"></span> {{ $doctor_1->created_at }}</a></div>
              <div><a href="#"><span class="icon-person"></span> Admin</a></div>
            </div>
          </div>
        </div>
        @endforeach
      </div>

  {{--     <div class="sidebar-box ftco-animate">
        <h3 class="heading-sidebar">Tag Cloud</h3>
        <div class="tagcloud">
          @foreach($postcategories as $postcate)
          <a href="#" class="tag-cloud-link">{{ $postcate->name }}</a>
          @endforeach
        </div>
      </div> --}}
{{-- 
      <div class="sidebar-box ftco-animate">
        <h3 class="heading-sidebar">Paragraph</h3>
        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ducimus itaque, autem necessitatibus voluptate quod mollitia delectus aut, sunt placeat nam vero culpa sapiente consectetur similique, inventore eos fugit cupiditate numquam!</p>
      </div> --}}
    </div>

  </div>
</div>
</section>
@endsection