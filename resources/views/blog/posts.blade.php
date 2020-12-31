@extends('layouts.app')
@section('title','Blog Posts')
@section('content')
    <section class="ftco-section bg-light">
        <div class="container-fluid px-md-5">
            <div class="row justify-content-center mb-5 pb-5">
                <div class="col-md-10 heading-section text-center ftco-animate">
                    <h2 class="mb-4">Health Tips</h2>
                    <p>In our blog post you will find a lot of important information related to health</p>
                </div>
            </div>
            <div class="row d-flex">
                @foreach($posts as $post)
                <div class="col-lg-4 ftco-animate">
                    <div class="blog-entry">
                        <a href="blog-single.html" class="block-20" style="background-image: url({{ asset('../storage/app/public/'.$post->image) }})">
                        </a>
                        <div class="d-flex">
                            <div class="meta pt-3 text-right pr-2">
                            <div><a href="{{ route('blog.singlepost',$post->slug) }}"><span class="fa fa-calendar mr-2"></span>{{ $post->created_at->diffForHumans() }}</a></div>
                            <div><a href="{{ route('blog.catepost',$post->postcategory->slug) }}" class="meta-chat"><span class="fa fa-comment mr-2"></span>{{ $post->postcategory->name }}</a></div>
                            </div>
                            <div class="text d-block">
                                <h3 class="heading"><a href="{{ route('blog.singlepost',$post->slug) }}">{{ $post->title }}</a></h3>
                                <p>{!! Str::words( $post->body, '14','...') !!}   </p>
                                <p><a href="{{ route('blog.singlepost',$post->slug) }}" class="btn btn-secondary btn-outline-secondary py-2 px-3">Read more</a></p>
                            </div>
                        </div>
                    </div>
                </div>
                @endforeach

            </div>
        </div>
    </section>
@endsection