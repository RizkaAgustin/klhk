@extends('adminlte::page')

@section('title', 'Create Web')

@section('content')
<div class="container-fluid">
    <div class="row">
        <div class="col-md-2"></div>
        <div class="col-md-8">
            <div class="card">
                <div class="card-header">
                    <div class="card-title">
                        <h4>Create Web</h4>
                    </div>
                    <div class="card-tools">
                        <a href="{{ route('web.index') }}" class="btn btn-primary">Back</a>
                    </div>
                </div>
                <form action="{{ route('web.store') }}" method="POST">
                    <div class="card-body">
                        @csrf
                        <x-input type="text" name="name" label="Web Name" />
                        <x-select label="Eselon" name="id_eselon" selectData="Eselon" />
                        <x-select label="Web Category" name="id_web_category" selectData="WebCategory" />
                        <x-input type="text" name="url_name" label="Url" />
                        <x-input type="text" name="ip_address" label="IP Address" />
                        <x-input type="textarea" name="description" label="Description" />
                        <x-input type="checkbox" name="status" label="Status" value="1" />
                        <x-input type="text" name="image" label="Image Url" />
                    </div>
                    <div class="card-footer">
                        <button type="submit" class="btn btn-success">Submit</button>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>
@stop

@section('js')
<script>
    $(document).ready(function() {
    $('#example').DataTable();
} );
</script>
@stop
