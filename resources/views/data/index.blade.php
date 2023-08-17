
@extends('adminlte::page')

@section('content')

    <h1>Data Table</h1>
    <table>
        <thead>
            <tr>
                <th>ID</th>
                <th>Name</th>
                <!-- Add more columns here -->
            </tr>
        </thead>
        <tbody>
            @foreach ($data as $item)
                <tr>
                    <td>{{ $item->id }}</td>
                    <td>{{ $item->f1 }}</td>
                    <!-- Add more columns here -->
                </tr>
            @endforeach
        </tbody>
    </table>
    
    @stop