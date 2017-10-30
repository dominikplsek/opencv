Pod::Spec.new do |s|
  s.name         = "opencv2-contrib"
  s.version      = "3.3.1"
  s.summary      = "OpenCV (Computer Vision) for macOS with extra modules."

  s.description  = <<-DESC
  OpenCV: open source computer vision library with extra modules\n\n    Homepage: http://opencv.org\n    Online docs: http://docs.opencv.org\n    Q&A forum: http://answers.opencv.org\n    Dev zone: http://code.opencv.org
                   DESC

  s.homepage     = "http://opencv.org"

  s.license = { :type => '3-clause BSD', :text => <<-LICENSE
By downloading, copying, installing or using the software you agree to this license.\nIf you do not agree to this license, do not download, install,\ncopy or use the software.\n\n\n                          License Agreement\n               For Open Source Computer Vision Library\n                       (3-clause BSD License)\n\nCopyright (C) 2000-2016, Intel Corporation, all rights reserved.\nCopyright (C) 2009-2011, Willow Garage Inc., all rights reserved.\nCopyright (C) 2009-2016, NVIDIA Corporation, all rights reserved.\nCopyright (C) 2010-2013, Advanced Micro Devices, Inc., all rights reserved.\nCopyright (C) 2015-2016, OpenCV Foundation, all rights reserved.\nCopyright (C) 2015-2016, Itseez Inc., all rights reserved.\nThird party copyrights are property of their respective owners.\n\nRedistribution and use in source and binary forms, with or without modification,\nare permitted provided that the following conditions are met:\n\n  * Redistributions of source code must retain the above copyright notice,\n    this list of conditions and the following disclaimer.\n\n  * Redistributions in binary form must reproduce the above copyright notice,\n    this list of conditions and the following disclaimer in the documentation\n    and/or other materials provided with the distribution.\n\n  * Neither the names of the copyright holders nor the names of the contributors\n    may be used to endorse or promote products derived from this software\n    without specific prior written permission.\n\nThis software is provided by the copyright holders and contributors \"as is\" and\nany express or implied warranties, including, but not limited to, the implied\nwarranties of merchantability and fitness for a particular purpose are disclaimed.\nIn no event shall copyright holders or contributors be liable for any direct,\nindirect, incidental, special, exemplary, or consequential damages\n(including, but not limited to, procurement of substitute goods or services;\nloss of use, data, or profits; or business interruption) however caused\nand on any theory of liability, whether in contract, strict liability,\nor tort (including negligence or otherwise) arising in any way out of\nthe use of this software, even if advised of the possibility of such damage.
                   LICENSE
                 }

  s.authors      = { "opencv.org" => "" }

  s.platform     = :osx, "10.9"

  s.source       = {  :http => 'https://github.com/dominikplsek/opencv/releases/download/3.3.1/opencv2.framework.zip' }

  s.source_files  = "opencv2.framework/Versions/A/Headers/**/*{.h,.hpp}"

  s.public_header_files = "opencv2.framework/Versions/A/Headers/**/*{.h,.hpp}"

  s.preserve_paths = "opencv2.framework"
  
  s.vendored_frameworks = 'opencv2.framework'

  s.header_dir = "opencv2"
  
  s.header_mappings_dir = "opencv2.framework/Versions/A/Headers/"
  
  s.dependency "libwebp"

  s.libraries = "stdc++"

  s.frameworks = "Accelerate", "AppKit", "AVFoundation", "CoreMedia", "CoreMedia" ,"CoreVideo", "Foundation", "QuartzCore", "OpenCL"
  
  s.requires_arc = false

  # s.xcconfig = { "HEADER_SEARCH_PATHS" => "$(SDKROOT)/usr/include/libxml2" }
end
