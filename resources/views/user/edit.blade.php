@extends('layouts.app')

@section('content')
    <div class="container">
        <h1>{{ __('User') }}</h1>
        <form method="post" action="{{ url('/user/update/'.$item->id) }}">
            @csrf
            @method('PUT')
            <input type="hidden" name="id" value="{{ $item->id }}">
            <div class="form-group">
                <label for="name">Name</label>
                <input type="text" class="form-control" id="name" name="name" value="{{ $item->name }}">
            </div>
            <div class="form-group">
                <label for="email">Email</label>
                <input type="email" class="form-control" id="email" name="email" value="{{ $item->email }}">
            </div>
            <div class="form-group">
                <label for="role">Role</label>
                <select class="form-control" id="role" name="role">
                    <option value="KONSUMEN" @if($item->role == 'KONSUMEN') selected @endif>Konsumen</option>
                    <option value="TOKO" @if($item->role == 'TOKO') selected @endif>Toko</option>
                </select>
            </div>
            <button type="submit" class="btn btn-primary">Submit</button>
        </form>
    </div>
@endsection
