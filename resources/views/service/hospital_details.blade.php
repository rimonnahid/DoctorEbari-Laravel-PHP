@extends('layouts.app')
@section('title','Hospital | '.$hospital->name)
@section('content')
<section class="ftco-section">
  <div class="container">
    <div class="row">
      <div class="col-lg-8 ftco-animate">
        <h2 class="mb-3">{{ $hospital->name }}</h2>
          <img src="{{ asset('../storage/app/public/'.$hospital->image) }}" alt="{{ $hospital->title }}" draggable="false" class="img-fluid">
        
        <p>{!! $hospital->details!!}</p>
        
        


      </div> <!-- .col-md-8 -->
      <div class="col-lg-4 sidebar ftco-animate">

      <div class="sidebar-box ftco-animate">
         <h3 class="heading-sidebar">Details of {{ $hospital->name }}</h3>
         <ul class="categories">
            {{-- <li><a href="tel:{{ $hospital->phone }}">{{ $hospital->phone }} <span>Call Now</span></a></li>
            <li><a>{{ $hospital->address }} <span>Address</span></a></li> --}}
          <table class="table">
              <tr>
                <td>Address</td>
                <td> : </td>
                <td>{{ $hospital->address }}</td>
              </tr>
              <tr>
                <td colspan="3"><a class="btn btn-info btn-block" href="tel:{{ $hospital->phone }}">Call Now</a></td>
              </tr>
            </table>

        </ul>
      </div>

      <div class="sidebar-box ftco-animate">
        <h3 class="heading-sidebar">Recently Added Hospitals</h3>
        @foreach($hospitals as $hos) 
        <div class="block-21 mb-4 d-flex">
          <a class="blog-img mr-4" style="background-image: url({{ asset('../storage/app/public/'.$hos->image) }})"></a>
          <div class="text">
            <h3 class="heading"><a href="{{ route('hospital.details',$hos->slug) }}">{!! Str::words( $hos->details, '12','..') !!} </a></h3>
            <div class="meta">
              <div><a href="#"><span class="icon-calendar"></span> {{ $hos->created_at }}</a></div>
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