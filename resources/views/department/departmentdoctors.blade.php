@extends('layouts.app')
@section('title',$departments->name.' | Doctors')
@section('content')
  
  <section style="background-image: url('public/front/images/coverimage1.jpg'); width: 100%; height: 260px;" data-stellar-background-ratio="0.5">
      <div class="container">
          <div class="row justify-content-center pb-3">
              <div class="col-md-8 text-center heading-section ftco-animate">
                  <h2 class="mb-4" style="line-height: 260px">{{ $departments->name}} <span>Doctors</span></h2>
              </div>
          </div>
      </div>
  </section>
    <section class="ftco-section bg-light" style="padding-top: 50px;">
        <div class="container-fluid">
            {{-- <div class="row justify-content-center pb-3">
                <div class="col-md-8 text-center heading-section ftco-animate">
                    <h2 class="mb-4">Our Qualified <span>Doctors</span></h2>
                </div>
            </div> --}}
            <div class="row">
                @foreach($doctors as $doctor)
                <div class="col-md-6 col-lg-3 ftco-animate">
                    <div class="staff">
                        <div class="img-wrap d-flex align-items-stretch">
                            <div class="img align-self-stretch" style="background-image: url({{ asset('../storage/app/public/'.$doctor->image) }})"></div>
                        </div>
                        <div class="text text-center">
                            <a href="{{ route('doctor.details',$doctor->slug) }}"><h3 class="mb-2">{{ $doctor->name }}</h3></a>
                            <span class="position mb-2">{{ $doctor->department->name }}</span>
                            <div class="faded">
                                <p>{!! Str::words($doctor->description,'10','...') !!}</p>
                                <a href="{{ route('book_now',$doctor->slug) }}" class="btn btn-block btn-success" style="background: #3bc053;border-color: #3bc053;">Booking Now</a>
                                <a href="tel:{{ $doctor->phone }}" class="btn btn-block btn-danger" style="background: #dc3545; border-color: #dc3545;">Call Now</a>
                            </div>
                        </div>
                    </div>
                </div>
                @endforeach
            </div>
            <div class="row justify-content-center">
                {{ $doctors->links() }}
            </div>
        </div>
    </section>
@endsection