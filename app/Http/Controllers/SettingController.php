<?php

namespace App\Http\Controllers;

use App\Models\Setting;
use App\Models\Front\Contact;
use Hamcrest\Core\Set;
use Illuminate\Http\Request;

class SettingController extends Controller
{
    public function index()
    {
        $setting = Setting::first();
        return view('admin.setting.setting',compact('setting'));
    }

    public function store()
    {
        $setting = Setting::create($this->validateData());
        $this->storeImage($setting);
        if ($setting) {
            $notification = array(
                'messege' => 'Information Upload Successfully!',
                'alert-type' => 'success'
            );
            return redirect()->back()->with($notification);
        }else{
            $notification = array(
                'messege' => 'Something Went Wrong!',
                'alert-type' => 'error'
            );
            return redirect()->back()->with($notification);
        }
    }

    public function update()
    {
        $setting = Setting::first();
        $setting->update($this->validateData());

        if (request()->has('favicon')) {
            if (request()->oldfavicon) {
                unlink('storage/app/public/'.request()->oldfavicon);
            }
            $this->storeImage($setting);
        }

        if (request()->has('logo')) {
            if (request()->oldlogo) {
                unlink('storage/app/public/'.request()->oldlogo);
            }
            $this->storeImage($setting);
        }

        if (request()->has('cover_image')) {
            if (request()->oldcover) {
                unlink('storage/app/public/'.request()->oldcover);
            }
            $this->storeImage($setting);
        }

        if ($setting) {
            $notification = array(
                'messege' => 'Information Updated Successfully!',
                'alert-type' => 'success'
            );
            return redirect()->back()->with($notification);
        }else{
            $notification = array(
                'messege' => 'Something Went Wrong!',
                'alert-type' => 'error'
            );
            return redirect()->back()->with($notification);
        }

    }

    public function messages()
    {
        $contacts = Contact::latest()->get();
        $count = 1;
        return view('admin.contact.contactlist',compact('contacts','count'));
    }

    private function validateData()
    {
        return request()->validate([
            'title' => 'required',
            'meta_description' => 'max:160',
            'about' => 'max:600',
            'meta_keywords' => '',
            'email' => '',
            'phone' => '',
            'hotline' => '',
            'address' => '',
            'web_link' => '',
            'fb_link' => '',
            'twitter_link' => '',
            'instagram_link' => '',
            'youtube_link' => '',
            'service_years' => '',
            'total_patients' => '',
            'total_doctors' => '',
            'total_staffs' => '',
            'notice' => '',
            'logo' => '',
            'favicon' => '',
            'cover_image' => ''
        ]);
    }

    private function storeImage($setting)
    {
        if (request()->has('favicon')) {
            $setting->update([
                'favicon' => request()->favicon->store('image/setting','public'),
            ]);
            // $resize = Image::make('storage/app/public/'.$setting->image)->resize(300,300);
            // $resize->save();
        }
        if (request()->has('logo')) {
            $setting->update([
                'logo' => request()->logo->store('image/setting','public'),
            ]);
            // $resize = Image::make('storage/app/public/'.$setting->image)->resize(300,300);
            // $resize->save();
        }
        if (request()->has('cover_image')) {
            $setting->update([
                'cover_image' => request()->cover_image->store('image/setting','public'),
            ]);
            // $resize = Image::make('storage/app/public/'.$setting->image)->resize(300,300);
            // $resize->save();
        }
    }
}
