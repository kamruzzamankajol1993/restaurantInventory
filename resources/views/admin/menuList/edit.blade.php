@extends('admin.master.master')

@section('title')
Add Menu
@endsection


@section('css')
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/cropperjs/1.5.6/cropper.css"/>
<script src="https://cdnjs.cloudflare.com/ajax/libs/cropperjs/1.5.6/cropper.js"></script>
@endsection

@section('body')
<div class="content-body">
<div class="container-fluid">

    <div class="row page-titles">
        <ol class="breadcrumb">
            <li class="breadcrumb-item active">Food & Table Management</li>
            <li class="breadcrumb-item">Add Menu</li>
        </ol>
    </div>

            <div class="row">
                <div class="col-lg-12">
                    <div class="card">

                        <div class="card-body">
                        @include('flash_message')




                            <form class="custom-validation" action="{{ route('menuList.update',$menuLists->id) }}" method="post" enctype="multipart/form-data" id="form" data-parsley-validate="">
                                @csrf

@method('PUT')


                                <!--new code for restuadent --->

                                <div class="row">
                                    <div class="mb-3 col-md-12">
                                        <label class="form-label">Menu Image</label>
                                        <input type="file" id="menuImage"  accept="image/*" name="image" class="form-control menuImage" >


                                        <input type="hidden" name="image_base64">
                                    <img src="{{ asset('/') }}{{ $menuLists->image }}" style="width: 200px;" class="show-image">


                                    </div>
                                    <div class="mb-3 col-md-12">
                                        <label class="form-label">Menu Name</label>
                                        <input type="text" value="{{ $menuLists->category_name }}" name="category_name" class="form-control" placeholder="Name" required>
                                    </div>

                                    <div class="mb-3 col-md-12">
                                        <label class="form-label">Status</label>
                                        <select id="inputState" name="status" class="default-select form-control ms-0 wide" required>
                                            <option value="">Choose...</option>
                                            <option value="Active" {{ 'Active' == $menuLists->status ? 'selected':'' }}>Active</option>
                                            <option value="Inactive" {{ 'Inactive' == $menuLists->status ? 'selected':'' }}>Inactive</option>
                                        </select>
                                    </div>
                                </div>
                                <button type="submit" class="btn btn-primary">Submit</button>

                                <!-- new code form restuadent --->
                              </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<!-- modal start --->
<div class="modal fade" id="modal" tabindex="-1" role="dialog" aria-labelledby="modalLabel" aria-hidden="true">
    <div class="modal-dialog modal-lg" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="modalLabel">{{ trans('oldorg.digiSign')}}</h5>

            </div>
            <div class="modal-body">
                <div class="img-container">
                    <div class="row">
                        <div class="col-md-8">
                            <img id="image" src="https://avatars0.githubusercontent.com/u/3456749">
                        </div>
                        <div class="col-md-4">
                            <div class="preview"></div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-dismiss="modal">Cancel</button>
                <button type="button" class="btn btn-primary" id="crop">Crop</button>
            </div>
        </div>
    </div>
</div>
<!--  modal end -->
@endsection

@section('script')
<script>
    var $modal = $('#modal');
    var image = document.getElementById('image');
    var cropper;
    var classVar = "";
    /*------------------------------------------
    --------------------------------------------
    Image Change Event
    --------------------------------------------
    --------------------------------------------*/
    $("body").on("change", ".menuImage", function(e){



        classVar = $(this).attr("class");
        console.log(classVar);
        var files = e.target.files;
        var done = function (url) {
            image.src = url;
            $modal.modal('show');
        };

        var reader;
        var file;
        var url;

        if (files && files.length > 0) {
            file = files[0];

            if (URL) {
                done(URL.createObjectURL(file));
            } else if (FileReader) {
                reader = new FileReader();
                reader.onload = function (e) {
                    done(reader.result);
                };
            reader.readAsDataURL(file);
            }
        }
    });

    /*------------------------------------------
    --------------------------------------------
    Show Model Event
    --------------------------------------------
    --------------------------------------------*/
    $modal.on('shown.bs.modal', function () {
        if(classVar == 'form-control digital_seal'){

        var finalCropWidth = 300;
        var finalCropHeight = 100;

        }else{

            var finalCropWidth = 300;
            var finalCropHeight = 80;

        }


var finalAspectRatio = finalCropWidth / finalCropHeight;
        cropper = new Cropper(image, {
            aspectRatio: 1,
            viewMode: 3,
            zoomable: true,
                dragMode: 'move',
            preview: '.preview'
        });
    }).on('hidden.bs.modal', function () {
        cropper.destroy();
        cropper = null;
    });

    /*------------------------------------------
    --------------------------------------------
    Crop Button Click Event
    --------------------------------------------
    --------------------------------------------*/



    $("#cancelImage").click(function(){
        $("#modal").modal('toggle');
    });

    $("#crop").click(function(){



        canvas = cropper.getCroppedCanvas({
            // width: 300,
            // height: 80,
        });


        canvas.toBlob(function(blob) {
            url = URL.createObjectURL(blob);
            var reader = new FileReader();
            reader.readAsDataURL(blob);
            reader.onloadend = function() {
                var base64data = reader.result;


                $("input[name='image_base64']").val(base64data);
                $(".show-image").show();
                $(".show-image").attr("src",base64data);
                $("#modal").modal('toggle');


            }
        });
    });

</script>
@endsection

