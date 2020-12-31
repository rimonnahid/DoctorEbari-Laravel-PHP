@extends('layouts.app')
@section('title','About Us')
@section('content')
    <section style="background-image: url('public/front/images/coverimage1.jpg'); width: 100%; height: 260px;" data-stellar-background-ratio="0.5">
        <div class="container">
            <div class="row justify-content-center pb-3">
                <div class="col-md-8 text-center heading-section ftco-animate">
                    <h2 class="mb-4" style="line-height: 260px"><span>About</span></h2>
                </div>
            </div>
        </div>
    </section>

{{--   <section class="ftco-counter img ftco-section ftco-no-pt ftco-no-pb" id="about-section">
    <div class="container">
      <div class="row d-flex">
        <div class="col-md-6 col-lg-5 d-flex">
          <div class="img w-100 d-flex align-self-stretch align-items-center" style="background-image:url(public/front/images/about.jpg);">
          </div>
        </div>
        <div class="col-md-6 col-lg-7 pl-lg-5 py-md-5">
          <div class="py-md-5">
            <div class="row justify-content-start pb-3">
              <div class="col-md-12 heading-section ftco-animate p-4 p-lg-5">
                <h2 class="mb-4">We Are <span> @if($setting) {{ $setting->title }} @endif</span> A Healthcare Provider</h2>
                <p> @if($setting) {{ $setting->about }} @endif</p>
                <p><a href="{{ route('home') }}#appointmentForm" class="btn btn-primary py-3 px-4">Make an appointment</a> <a href="{{ route('contact') }}" class="btn btn-secondary py-3 px-4">Contact us</a></p>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </section> --}}
  <section class="ftco-section bg-light" style="padding-top: 10px;">
    <div class="container">
        <div class="row justify-content-center pb-3">
            <div class="col-md-8 text-center heading-section ftco-animate">
                <h2 class="mb-4">Our <span>Staff</span></h2>
            </div>
        </div>
        <div class="row">
            @foreach($staffs as $staff)
            <div class="col-md-6 col-lg-4 ftco-animate">
                <div class="staff">
                    <div class="img-wrap d-flex align-items-stretch">
                        <div class="img align-self-stretch" style="background-image: url({{ asset('../storage/app/public/'.$staff->image) }})"></div>
                    </div>
                    <div class="text text-center">
                        <a href="{{ route('staff.details',$staff->slug) }}"><h3 class="mb-2">{{ $staff->name }}</h3></a>
                        <span class="position mb-2">{{ $staff->designation }}</span>
                        <div class="faded">
                            <p>{!! $staff->details !!}</p>
                            <ul class="ftco-social text-center">
                                <li class="ftco-animate"><a target="_blank" href="{{ $staff->twitter_link }}" class="d-flex align-items-center justify-content-center"><span class="fa fa-twitter"></span></a></li>
                                <li class="ftco-animate"><a target="_blank" href="{{ $staff->fb_link }}" class="d-flex align-items-center justify-content-center"><span class="fa fa-facebook"></span></a></li>
                                <li class="ftco-animate"><a target="_blank" href="{{ $staff->instagram_link }}" class="d-flex align-items-center justify-content-center"><span class="fa fa-instagram"></span></a></li>
                            </ul>
                            <button class="btn btn-block btn-danger" style="background: #dc3545; border-color: #dc3545;">Call Now</button>
                        </div>
                    </div>
                </div>
            </div>
            @endforeach

        </div>
        <div class="row justify-content-center">
            {{ $staffs->links() }}
        </div>
    </div>
  </section>


  <section class="ftco-section bg-light" style="padding: 0px;">
    <div class="container">
        <div class="row justify-content-center pb-3">
            <div class="col-md-8 text-center heading-section ftco-animate">
                <h2 class="mb-4">Our <span>Technical Team</span></h2>
            </div>
        </div>
        <div class="row">
            <div class="col-md-6 col-lg-4 ftco-animate">
                <div class="staff">
                    <div class="img-wrap d-flex align-items-stretch">
                        <div class="img align-self-stretch" style="background-image:url(public/front/images/technical/hrmahid.jpg);"></div>
                    </div>
                    <div class="text text-center">
                        <a href=""><h3 class="mb-2">HR Mahid</h3></a>
                        <span class="position mb-2">Web Developer</span>
                        <div class="faded">
                            <p>Skill is my weapon.I live for code.</p>
                            <ul class="ftco-social text-center">
                                <li class="ftco-animate"><a target="_blank" href="https://twitter.com/hrmahid" class="d-flex align-items-center justify-content-center"><span class="fa fa-twitter"></span></a></li>
                                <li class="ftco-animate"><a target="_blank" href="https://www.facebook.com/hr.mahid.9" class="d-flex align-items-center justify-content-center"><span class="fa fa-facebook"></span></a></li>
                                <li class="ftco-animate"><a target="_blank" href="https://www.youtube.com/bugbearbd" class="d-flex align-items-center justify-content-center"><span class="fa fa-youtube"></span></a></li>
                            </ul>
                            <a href="https://www.youtube.com/watch?v=bbvqI-g73xM" class="btn btn-block btn-danger" style="background: #dc3545; border-color: #dc3545;">Visit Now</a>
                        </div>
                    </div>
                </div>
            </div>


            <div class="col-md-6 col-lg-4 ftco-animate">
                <div class="staff">
                    <div class="img-wrap d-flex align-items-stretch">
                        <div class="img align-self-stretch" style="background-image:url(public/front/images/technical/rimonnahid.jpg);"></div>
                    </div>
                    <div class="text text-center">
                        <a href=""><h3 class="mb-2">Rimon Nahid</h3></a>
                        <span class="position mb-2">Web Developer</span>
                        <div class="faded">
                            <p>Skill is my weapon.I live for code.</p>
                            <ul class="ftco-social text-center">
                                <li class="ftco-animate"><a target="_blank" href="https://twitter.com/rimonnahid19" class="d-flex align-items-center justify-content-center"><span class="fa fa-twitter"></span></a></li>
                                <li class="ftco-animate"><a target="_blank" href="https://www.facebook.com/rimon.nahid.9/" class="d-flex align-items-center justify-content-center"><span class="fa fa-facebook"></span></a></li>
                                <li class="ftco-animate"><a target="_blank" href="https://www.instagram.com/rimonnahid19/" class="d-flex align-items-center justify-content-center"><span class="fa fa-github"></span></a></li>
                            </ul>
                            <a href="https://rimonnahid.storialtech.com/" class="btn btn-block btn-danger" style="background: #dc3545; border-color: #dc3545;">Visit Now</a>
                        </div>
                    </div>
                </div>
            </div>



            <div class="col-md-6 col-lg-4 ftco-animate">
                <div class="staff">
                    <div class="img-wrap d-flex align-items-stretch">
                        <div class="img align-self-stretch" style="background-image:url(public/front/images/technical/rakibalom.jpg);"></div>
                    </div>
                    <div class="text text-center">
                        <a href=""><h3 class="mb-2">Rakib Alom</h3></a>
                        <span class="position mb-2">Web Developer</span>
                        <div class="faded">
                            <p>Skill is my weapon.I live for code.</p>
                            <ul class="ftco-social text-center">
                                <li class="ftco-animate"><a target="_blank" href="https://twitter.com/RakibAlom7" class="d-flex align-items-center justify-content-center"><span class="fa fa-twitter"></span></a></li>
                                <li class="ftco-animate"><a target="_blank" href="https://www.facebook.com/wrarakib" class="d-flex align-items-center justify-content-center"><span class="fa fa-facebook"></span></a></li>
                                <li class="ftco-animate"><a target="_blank" href="https://www.instagram.com/rakib.alom/" class="d-flex align-items-center justify-content-center"><span class="fa fa-github"></span></a></li>
                            </ul>
                            <a href="https://rakibalom.storialtech.com/" class="btn btn-block btn-danger" style="background: #dc3545; border-color: #dc3545;">Visit Now</a>
                        </div>
                    </div>
                </div>
            </div>

        </div>
    </div>
  </section>
@endsection