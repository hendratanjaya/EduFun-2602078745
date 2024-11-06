@extends("layout.main")

@section("content")

<div class="card mb-3">
    <img src="/post-img/{{ $post->imgUrl }}" class="card-img-top " alt="{{ $post->imgUrl }}" style="max-height: 50vh; object-fit: cover">
    <div class="card-body">
      <h5 class="card-title">{{ $title }} | {{ $post->category }}</h5>
      <p class="card-text"><small class="text-muted"><span><a href="/writers/id{{ $post->writer->id }}" class="link-secondary">{{ $post->writer->name }}</a></span> | {{ $post->created_at->format("j F Y") }}</small></p>
      <p class="card-text">{{ $post->body }}</p>
    </div>
</div>
@endsection