@extends('layouts.app')
@section('title','Gallery')
@section('content')
  <section style="background-image: url('public/front/images/coverimage1.jpg'); width: 100%; height: 260px;" data-stellar-background-ratio="0.5">
      <div class="container">
          <div class="row justify-content-center pb-3">
              <div class="col-md-8 text-center heading-section ftco-animate">
                  <h2 class="mb-4" style="line-height: 260px">Our <span>Gallery</span></h2>
              </div>
          </div>
      </div>
  </section>

<section class="ftco-section">
  <div class="container">

    {{-- <div class="row justify-content-center pb-3">
        <div class="col-md-8 text-center heading-section ftco-animate">
            <h2 class="mb-4">Our <span>Gallery</span></h2>
        </div>
    </div> --}}
    <div class="row no-gutters">
      @foreach($galleries as $gallery)
      <div class="col-md-3">
        <a href="{{ asset('../storage/app/public/'.$gallery->image) }}" class="image-popup img gallery ftco-animate" style="background-image: url({{ asset('../storage/app/public/'.$gallery->image) }})">
          <span class="overlay"></span>
        </a>
      </div>
      @endforeach
    </div>
  </div>
</section>
@endsection

