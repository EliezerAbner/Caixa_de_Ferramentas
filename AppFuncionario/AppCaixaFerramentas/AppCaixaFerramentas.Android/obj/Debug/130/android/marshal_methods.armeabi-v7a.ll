; ModuleID = 'obj\Debug\130\android\marshal_methods.armeabi-v7a.ll'
source_filename = "obj\Debug\130\android\marshal_methods.armeabi-v7a.ll"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-android"


%struct.MonoImage = type opaque

%struct.MonoClass = type opaque

%struct.MarshalMethodsManagedClass = type {
	i32,; uint32_t token
	%struct.MonoClass*; MonoClass* klass
}

%struct.MarshalMethodName = type {
	i64,; uint64_t id
	i8*; char* name
}

%class._JNIEnv = type opaque

%class._jobject = type {
	i8; uint8_t b
}

%class._jclass = type {
	i8; uint8_t b
}

%class._jstring = type {
	i8; uint8_t b
}

%class._jthrowable = type {
	i8; uint8_t b
}

%class._jarray = type {
	i8; uint8_t b
}

%class._jobjectArray = type {
	i8; uint8_t b
}

%class._jbooleanArray = type {
	i8; uint8_t b
}

%class._jbyteArray = type {
	i8; uint8_t b
}

%class._jcharArray = type {
	i8; uint8_t b
}

%class._jshortArray = type {
	i8; uint8_t b
}

%class._jintArray = type {
	i8; uint8_t b
}

%class._jlongArray = type {
	i8; uint8_t b
}

%class._jfloatArray = type {
	i8; uint8_t b
}

%class._jdoubleArray = type {
	i8; uint8_t b
}

; assembly_image_cache
@assembly_image_cache = local_unnamed_addr global [0 x %struct.MonoImage*] zeroinitializer, align 4
; Each entry maps hash of an assembly name to an index into the `assembly_image_cache` array
@assembly_image_cache_hashes = local_unnamed_addr constant [230 x i32] [
	i32 32687329, ; 0: Xamarin.AndroidX.Lifecycle.Runtime => 0x1f2c4e1 => 59
	i32 34715100, ; 1: Xamarin.Google.Guava.ListenableFuture.dll => 0x211b5dc => 89
	i32 39109920, ; 2: Newtonsoft.Json.dll => 0x254c520 => 11
	i32 57263871, ; 3: Xamarin.Forms.Core.dll => 0x369c6ff => 83
	i32 101534019, ; 4: Xamarin.AndroidX.SlidingPaneLayout => 0x60d4943 => 73
	i32 120558881, ; 5: Xamarin.AndroidX.SlidingPaneLayout.dll => 0x72f9521 => 73
	i32 165246403, ; 6: Xamarin.AndroidX.Collection.dll => 0x9d975c3 => 40
	i32 166922606, ; 7: Xamarin.Android.Support.Compat.dll => 0x9f3096e => 24
	i32 172012715, ; 8: FastAndroidCamera.dll => 0xa40b4ab => 5
	i32 182336117, ; 9: Xamarin.AndroidX.SwipeRefreshLayout.dll => 0xade3a75 => 74
	i32 209399409, ; 10: Xamarin.AndroidX.Browser.dll => 0xc7b2e71 => 38
	i32 219130465, ; 11: Xamarin.Android.Support.v4 => 0xd0faa61 => 29
	i32 220171995, ; 12: System.Diagnostics.Debug => 0xd1f8edb => 108
	i32 230216969, ; 13: Xamarin.AndroidX.Legacy.Support.Core.Utils.dll => 0xdb8d509 => 54
	i32 231814094, ; 14: System.Globalization => 0xdd133ce => 114
	i32 232815796, ; 15: System.Web.Services => 0xde07cb4 => 102
	i32 261689757, ; 16: Xamarin.AndroidX.ConstraintLayout.dll => 0xf99119d => 43
	i32 278686392, ; 17: Xamarin.AndroidX.Lifecycle.LiveData.dll => 0x109c6ab8 => 58
	i32 280482487, ; 18: Xamarin.AndroidX.Interpolator => 0x10b7d2b7 => 52
	i32 318968648, ; 19: Xamarin.AndroidX.Activity.dll => 0x13031348 => 30
	i32 321597661, ; 20: System.Numerics => 0x132b30dd => 17
	i32 334355562, ; 21: ZXing.Net.Mobile.Forms.dll => 0x13eddc6a => 92
	i32 342366114, ; 22: Xamarin.AndroidX.Lifecycle.Common => 0x146817a2 => 56
	i32 385762202, ; 23: System.Memory.dll => 0x16fe439a => 16
	i32 389971796, ; 24: Xamarin.Android.Support.Core.UI => 0x173e7f54 => 25
	i32 441335492, ; 25: Xamarin.AndroidX.ConstraintLayout.Core => 0x1a4e3ec4 => 42
	i32 442521989, ; 26: Xamarin.Essentials => 0x1a605985 => 82
	i32 442565967, ; 27: System.Collections => 0x1a61054f => 106
	i32 450948140, ; 28: Xamarin.AndroidX.Fragment.dll => 0x1ae0ec2c => 51
	i32 465846621, ; 29: mscorlib => 0x1bc4415d => 9
	i32 469710990, ; 30: System.dll => 0x1bff388e => 15
	i32 476646585, ; 31: Xamarin.AndroidX.Interpolator.dll => 0x1c690cb9 => 52
	i32 486930444, ; 32: Xamarin.AndroidX.LocalBroadcastManager.dll => 0x1d05f80c => 63
	i32 498788369, ; 33: System.ObjectModel => 0x1dbae811 => 109
	i32 514659665, ; 34: Xamarin.Android.Support.Compat => 0x1ead1551 => 24
	i32 526420162, ; 35: System.Transactions.dll => 0x1f6088c2 => 96
	i32 545304856, ; 36: System.Runtime.Extensions => 0x2080b118 => 107
	i32 605376203, ; 37: System.IO.Compression.FileSystem => 0x24154ecb => 100
	i32 627609679, ; 38: Xamarin.AndroidX.CustomView => 0x2568904f => 47
	i32 663517072, ; 39: Xamarin.AndroidX.VersionedParcelable => 0x278c7790 => 79
	i32 666292255, ; 40: Xamarin.AndroidX.Arch.Core.Common.dll => 0x27b6d01f => 35
	i32 690569205, ; 41: System.Xml.Linq.dll => 0x29293ff5 => 22
	i32 692692150, ; 42: Xamarin.Android.Support.Annotations => 0x2949a4b6 => 23
	i32 775507847, ; 43: System.IO.Compression => 0x2e394f87 => 99
	i32 809851609, ; 44: System.Drawing.Common.dll => 0x30455ad9 => 98
	i32 843511501, ; 45: Xamarin.AndroidX.Print => 0x3246f6cd => 70
	i32 877678880, ; 46: System.Globalization.dll => 0x34505120 => 114
	i32 882883187, ; 47: Xamarin.Android.Support.v4.dll => 0x349fba73 => 29
	i32 928116545, ; 48: Xamarin.Google.Guava.ListenableFuture => 0x3751ef41 => 89
	i32 954320159, ; 49: ZXing.Net.Mobile.Forms => 0x38e1c51f => 92
	i32 955402788, ; 50: Newtonsoft.Json => 0x38f24a24 => 11
	i32 958213972, ; 51: Xamarin.Android.Support.Media.Compat => 0x391d2f54 => 28
	i32 967690846, ; 52: Xamarin.AndroidX.Lifecycle.Common.dll => 0x39adca5e => 56
	i32 974778368, ; 53: FormsViewGroup.dll => 0x3a19f000 => 6
	i32 983245897, ; 54: AppCaixaFerramentas => 0x3a9b2449 => 4
	i32 992768348, ; 55: System.Collections.dll => 0x3b2c715c => 106
	i32 1012816738, ; 56: Xamarin.AndroidX.SavedState.dll => 0x3c5e5b62 => 72
	i32 1035644815, ; 57: Xamarin.AndroidX.AppCompat => 0x3dbaaf8f => 34
	i32 1042160112, ; 58: Xamarin.Forms.Platform.dll => 0x3e1e19f0 => 86
	i32 1052210849, ; 59: Xamarin.AndroidX.Lifecycle.ViewModel.dll => 0x3eb776a1 => 60
	i32 1098259244, ; 60: System => 0x41761b2c => 15
	i32 1134191450, ; 61: ZXingNetMobile.dll => 0x439a635a => 94
	i32 1175144683, ; 62: Xamarin.AndroidX.VectorDrawable.Animated => 0x460b48eb => 77
	i32 1178241025, ; 63: Xamarin.AndroidX.Navigation.Runtime.dll => 0x463a8801 => 67
	i32 1204270330, ; 64: Xamarin.AndroidX.Arch.Core.Common => 0x47c7b4fa => 35
	i32 1267360935, ; 65: Xamarin.AndroidX.VectorDrawable => 0x4b8a64a7 => 78
	i32 1293217323, ; 66: Xamarin.AndroidX.DrawerLayout.dll => 0x4d14ee2b => 49
	i32 1364015309, ; 67: System.IO => 0x514d38cd => 112
	i32 1365406463, ; 68: System.ServiceModel.Internals.dll => 0x516272ff => 103
	i32 1376866003, ; 69: Xamarin.AndroidX.SavedState => 0x52114ed3 => 72
	i32 1395857551, ; 70: Xamarin.AndroidX.Media.dll => 0x5333188f => 64
	i32 1406073936, ; 71: Xamarin.AndroidX.CoordinatorLayout => 0x53cefc50 => 44
	i32 1411638395, ; 72: System.Runtime.CompilerServices.Unsafe => 0x5423e47b => 19
	i32 1445445088, ; 73: Xamarin.Android.Support.Fragment => 0x5627bde0 => 27
	i32 1457743152, ; 74: System.Runtime.Extensions.dll => 0x56e36530 => 107
	i32 1460219004, ; 75: Xamarin.Forms.Xaml => 0x57092c7c => 87
	i32 1462112819, ; 76: System.IO.Compression.dll => 0x57261233 => 99
	i32 1469204771, ; 77: Xamarin.AndroidX.AppCompat.AppCompatResources => 0x57924923 => 33
	i32 1511525525, ; 78: MySqlConnector => 0x5a180c95 => 10
	i32 1543031311, ; 79: System.Text.RegularExpressions.dll => 0x5bf8ca0f => 113
	i32 1571005899, ; 80: zxing.portable => 0x5da3a5cb => 93
	i32 1574652163, ; 81: Xamarin.Android.Support.Core.Utils.dll => 0x5ddb4903 => 26
	i32 1582372066, ; 82: Xamarin.AndroidX.DocumentFile.dll => 0x5e5114e2 => 48
	i32 1592978981, ; 83: System.Runtime.Serialization.dll => 0x5ef2ee25 => 3
	i32 1622152042, ; 84: Xamarin.AndroidX.Loader.dll => 0x60b0136a => 62
	i32 1624863272, ; 85: Xamarin.AndroidX.ViewPager2 => 0x60d97228 => 81
	i32 1636350590, ; 86: Xamarin.AndroidX.CursorAdapter => 0x6188ba7e => 46
	i32 1639515021, ; 87: System.Net.Http.dll => 0x61b9038d => 2
	i32 1639986890, ; 88: System.Text.RegularExpressions => 0x61c036ca => 113
	i32 1657153582, ; 89: System.Runtime => 0x62c6282e => 20
	i32 1658241508, ; 90: Xamarin.AndroidX.Tracing.Tracing.dll => 0x62d6c1e4 => 75
	i32 1658251792, ; 91: Xamarin.Google.Android.Material.dll => 0x62d6ea10 => 88
	i32 1670060433, ; 92: Xamarin.AndroidX.ConstraintLayout => 0x638b1991 => 43
	i32 1701541528, ; 93: System.Diagnostics.Debug.dll => 0x656b7698 => 108
	i32 1729485958, ; 94: Xamarin.AndroidX.CardView.dll => 0x6715dc86 => 39
	i32 1766324549, ; 95: Xamarin.AndroidX.SwipeRefreshLayout => 0x6947f945 => 74
	i32 1776026572, ; 96: System.Core.dll => 0x69dc03cc => 13
	i32 1787387394, ; 97: AppCaixaFerramentas.dll => 0x6a895e02 => 4
	i32 1788241197, ; 98: Xamarin.AndroidX.Fragment => 0x6a96652d => 51
	i32 1808609942, ; 99: Xamarin.AndroidX.Loader => 0x6bcd3296 => 62
	i32 1813201214, ; 100: Xamarin.Google.Android.Material => 0x6c13413e => 88
	i32 1818569960, ; 101: Xamarin.AndroidX.Navigation.UI.dll => 0x6c652ce8 => 68
	i32 1867746548, ; 102: Xamarin.Essentials.dll => 0x6f538cf4 => 82
	i32 1878053835, ; 103: Xamarin.Forms.Xaml.dll => 0x6ff0d3cb => 87
	i32 1885316902, ; 104: Xamarin.AndroidX.Arch.Core.Runtime.dll => 0x705fa726 => 36
	i32 1904184254, ; 105: FastAndroidCamera => 0x717f8bbe => 5
	i32 1919157823, ; 106: Xamarin.AndroidX.MultiDex.dll => 0x7264063f => 65
	i32 2011961780, ; 107: System.Buffers.dll => 0x77ec19b4 => 12
	i32 2019465201, ; 108: Xamarin.AndroidX.Lifecycle.ViewModel => 0x785e97f1 => 60
	i32 2055257422, ; 109: Xamarin.AndroidX.Lifecycle.LiveData.Core.dll => 0x7a80bd4e => 57
	i32 2079903147, ; 110: System.Runtime.dll => 0x7bf8cdab => 20
	i32 2090596640, ; 111: System.Numerics.Vectors => 0x7c9bf920 => 18
	i32 2097448633, ; 112: Xamarin.AndroidX.Legacy.Support.Core.UI => 0x7d0486b9 => 53
	i32 2113902067, ; 113: Xamarin.Forms.PancakeView.dll => 0x7dff95f3 => 84
	i32 2126786730, ; 114: Xamarin.Forms.Platform.Android => 0x7ec430aa => 85
	i32 2166116741, ; 115: Xamarin.Android.Support.Core.Utils => 0x811c5185 => 26
	i32 2193016926, ; 116: System.ObjectModel.dll => 0x82b6c85e => 109
	i32 2201231467, ; 117: System.Net.Http => 0x8334206b => 2
	i32 2217644978, ; 118: Xamarin.AndroidX.VectorDrawable.Animated.dll => 0x842e93b2 => 77
	i32 2244775296, ; 119: Xamarin.AndroidX.LocalBroadcastManager => 0x85cc8d80 => 63
	i32 2256548716, ; 120: Xamarin.AndroidX.MultiDex => 0x8680336c => 65
	i32 2261435625, ; 121: Xamarin.AndroidX.Legacy.Support.V4.dll => 0x86cac4e9 => 55
	i32 2279755925, ; 122: Xamarin.AndroidX.RecyclerView.dll => 0x87e25095 => 71
	i32 2315684594, ; 123: Xamarin.AndroidX.Annotation.dll => 0x8a068af2 => 31
	i32 2329204181, ; 124: zxing.portable.dll => 0x8ad4d5d5 => 93
	i32 2330457430, ; 125: Xamarin.Android.Support.Core.UI.dll => 0x8ae7f556 => 25
	i32 2341995103, ; 126: ZXingNetMobile => 0x8b98025f => 94
	i32 2373288475, ; 127: Xamarin.Android.Support.Fragment.dll => 0x8d75821b => 27
	i32 2397082276, ; 128: Xamarin.Forms.PancakeView => 0x8ee092a4 => 84
	i32 2409053734, ; 129: Xamarin.AndroidX.Preference.dll => 0x8f973e26 => 69
	i32 2431243866, ; 130: ZXing.Net.Mobile.Core.dll => 0x90e9d65a => 90
	i32 2454642406, ; 131: System.Text.Encoding.dll => 0x924edee6 => 111
	i32 2465532216, ; 132: Xamarin.AndroidX.ConstraintLayout.Core.dll => 0x92f50938 => 42
	i32 2471841756, ; 133: netstandard.dll => 0x93554fdc => 1
	i32 2475788418, ; 134: Java.Interop.dll => 0x93918882 => 7
	i32 2482213323, ; 135: ZXing.Net.Mobile.Forms.Android => 0x93f391cb => 91
	i32 2501346920, ; 136: System.Data.DataSetExtensions => 0x95178668 => 97
	i32 2505896520, ; 137: Xamarin.AndroidX.Lifecycle.Runtime.dll => 0x955cf248 => 59
	i32 2581819634, ; 138: Xamarin.AndroidX.VectorDrawable.dll => 0x99e370f2 => 78
	i32 2620871830, ; 139: Xamarin.AndroidX.CursorAdapter.dll => 0x9c375496 => 46
	i32 2624644809, ; 140: Xamarin.AndroidX.DynamicAnimation => 0x9c70e6c9 => 50
	i32 2633051222, ; 141: Xamarin.AndroidX.Lifecycle.LiveData => 0x9cf12c56 => 58
	i32 2693849962, ; 142: System.IO.dll => 0xa090e36a => 112
	i32 2701096212, ; 143: Xamarin.AndroidX.Tracing.Tracing => 0xa0ff7514 => 75
	i32 2715334215, ; 144: System.Threading.Tasks.dll => 0xa1d8b647 => 105
	i32 2732626843, ; 145: Xamarin.AndroidX.Activity => 0xa2e0939b => 30
	i32 2737747696, ; 146: Xamarin.AndroidX.AppCompat.AppCompatResources.dll => 0xa32eb6f0 => 33
	i32 2766581644, ; 147: Xamarin.Forms.Core => 0xa4e6af8c => 83
	i32 2778768386, ; 148: Xamarin.AndroidX.ViewPager.dll => 0xa5a0a402 => 80
	i32 2810250172, ; 149: Xamarin.AndroidX.CoordinatorLayout.dll => 0xa78103bc => 44
	i32 2819470561, ; 150: System.Xml.dll => 0xa80db4e1 => 21
	i32 2834977773, ; 151: AppCaixaFerramentas.Android.dll => 0xa8fa53ed => 0
	i32 2853208004, ; 152: Xamarin.AndroidX.ViewPager => 0xaa107fc4 => 80
	i32 2855708567, ; 153: Xamarin.AndroidX.Transition => 0xaa36a797 => 76
	i32 2903344695, ; 154: System.ComponentModel.Composition => 0xad0d8637 => 101
	i32 2905242038, ; 155: mscorlib.dll => 0xad2a79b6 => 9
	i32 2916838712, ; 156: Xamarin.AndroidX.ViewPager2.dll => 0xaddb6d38 => 81
	i32 2919462931, ; 157: System.Numerics.Vectors.dll => 0xae037813 => 18
	i32 2921128767, ; 158: Xamarin.AndroidX.Annotation.Experimental.dll => 0xae1ce33f => 32
	i32 2978675010, ; 159: Xamarin.AndroidX.DrawerLayout => 0xb18af942 => 49
	i32 3024354802, ; 160: Xamarin.AndroidX.Legacy.Support.Core.Utils => 0xb443fdf2 => 54
	i32 3044182254, ; 161: FormsViewGroup => 0xb57288ee => 6
	i32 3057625584, ; 162: Xamarin.AndroidX.Navigation.Common => 0xb63fa9f0 => 66
	i32 3075834255, ; 163: System.Threading.Tasks => 0xb755818f => 105
	i32 3092211740, ; 164: Xamarin.Android.Support.Media.Compat.dll => 0xb84f681c => 28
	i32 3111772706, ; 165: System.Runtime.Serialization => 0xb979e222 => 3
	i32 3204380047, ; 166: System.Data.dll => 0xbefef58f => 95
	i32 3211777861, ; 167: Xamarin.AndroidX.DocumentFile => 0xbf6fd745 => 48
	i32 3220365878, ; 168: System.Threading => 0xbff2e236 => 110
	i32 3247949154, ; 169: Mono.Security => 0xc197c562 => 104
	i32 3258312781, ; 170: Xamarin.AndroidX.CardView => 0xc235e84d => 39
	i32 3267021929, ; 171: Xamarin.AndroidX.AsyncLayoutInflater => 0xc2bacc69 => 37
	i32 3287051252, ; 172: AppCaixaFerramentas.Android => 0xc3ec6bf4 => 0
	i32 3299363146, ; 173: System.Text.Encoding => 0xc4a8494a => 111
	i32 3317135071, ; 174: Xamarin.AndroidX.CustomView.dll => 0xc5b776df => 47
	i32 3317144872, ; 175: System.Data => 0xc5b79d28 => 95
	i32 3340431453, ; 176: Xamarin.AndroidX.Arch.Core.Runtime => 0xc71af05d => 36
	i32 3346324047, ; 177: Xamarin.AndroidX.Navigation.Runtime => 0xc774da4f => 67
	i32 3353484488, ; 178: Xamarin.AndroidX.Legacy.Support.Core.UI.dll => 0xc7e21cc8 => 53
	i32 3362522851, ; 179: Xamarin.AndroidX.Core => 0xc86c06e3 => 45
	i32 3366347497, ; 180: Java.Interop => 0xc8a662e9 => 7
	i32 3374999561, ; 181: Xamarin.AndroidX.RecyclerView => 0xc92a6809 => 71
	i32 3395150330, ; 182: System.Runtime.CompilerServices.Unsafe.dll => 0xca5de1fa => 19
	i32 3404865022, ; 183: System.ServiceModel.Internals => 0xcaf21dfe => 103
	i32 3429136800, ; 184: System.Xml => 0xcc6479a0 => 21
	i32 3430777524, ; 185: netstandard => 0xcc7d82b4 => 1
	i32 3439690031, ; 186: Xamarin.Android.Support.Annotations.dll => 0xcd05812f => 23
	i32 3441283291, ; 187: Xamarin.AndroidX.DynamicAnimation.dll => 0xcd1dd0db => 50
	i32 3476120550, ; 188: Mono.Android => 0xcf3163e6 => 8
	i32 3486566296, ; 189: System.Transactions => 0xcfd0c798 => 96
	i32 3493954962, ; 190: Xamarin.AndroidX.Concurrent.Futures.dll => 0xd0418592 => 41
	i32 3501239056, ; 191: Xamarin.AndroidX.AsyncLayoutInflater.dll => 0xd0b0ab10 => 37
	i32 3509114376, ; 192: System.Xml.Linq => 0xd128d608 => 22
	i32 3536029504, ; 193: Xamarin.Forms.Platform.Android.dll => 0xd2c38740 => 85
	i32 3567349600, ; 194: System.ComponentModel.Composition.dll => 0xd4a16f60 => 101
	i32 3618140916, ; 195: Xamarin.AndroidX.Preference => 0xd7a872f4 => 69
	i32 3627220390, ; 196: Xamarin.AndroidX.Print.dll => 0xd832fda6 => 70
	i32 3632359727, ; 197: Xamarin.Forms.Platform => 0xd881692f => 86
	i32 3633644679, ; 198: Xamarin.AndroidX.Annotation.Experimental => 0xd8950487 => 32
	i32 3641597786, ; 199: Xamarin.AndroidX.Lifecycle.LiveData.Core => 0xd90e5f5a => 57
	i32 3672681054, ; 200: Mono.Android.dll => 0xdae8aa5e => 8
	i32 3676310014, ; 201: System.Web.Services.dll => 0xdb2009fe => 102
	i32 3682565725, ; 202: Xamarin.AndroidX.Browser => 0xdb7f7e5d => 38
	i32 3684561358, ; 203: Xamarin.AndroidX.Concurrent.Futures => 0xdb9df1ce => 41
	i32 3689375977, ; 204: System.Drawing.Common => 0xdbe768e9 => 98
	i32 3718780102, ; 205: Xamarin.AndroidX.Annotation => 0xdda814c6 => 31
	i32 3724971120, ; 206: Xamarin.AndroidX.Navigation.Common.dll => 0xde068c70 => 66
	i32 3748608112, ; 207: System.Diagnostics.DiagnosticSource => 0xdf6f3870 => 14
	i32 3758932259, ; 208: Xamarin.AndroidX.Legacy.Support.V4 => 0xe00cc123 => 55
	i32 3786282454, ; 209: Xamarin.AndroidX.Collection => 0xe1ae15d6 => 40
	i32 3822602673, ; 210: Xamarin.AndroidX.Media => 0xe3d849b1 => 64
	i32 3829621856, ; 211: System.Numerics.dll => 0xe4436460 => 17
	i32 3847036339, ; 212: ZXing.Net.Mobile.Forms.Android.dll => 0xe54d1db3 => 91
	i32 3885922214, ; 213: Xamarin.AndroidX.Transition.dll => 0xe79e77a6 => 76
	i32 3896760992, ; 214: Xamarin.AndroidX.Core.dll => 0xe843daa0 => 45
	i32 3920810846, ; 215: System.IO.Compression.FileSystem.dll => 0xe9b2d35e => 100
	i32 3921031405, ; 216: Xamarin.AndroidX.VersionedParcelable.dll => 0xe9b630ed => 79
	i32 3931092270, ; 217: Xamarin.AndroidX.Navigation.UI => 0xea4fb52e => 68
	i32 3945713374, ; 218: System.Data.DataSetExtensions.dll => 0xeb2ecede => 97
	i32 3955647286, ; 219: Xamarin.AndroidX.AppCompat.dll => 0xebc66336 => 34
	i32 4025784931, ; 220: System.Memory => 0xeff49a63 => 16
	i32 4073602200, ; 221: System.Threading.dll => 0xf2ce3c98 => 110
	i32 4079385022, ; 222: MySqlConnector.dll => 0xf32679be => 10
	i32 4105002889, ; 223: Mono.Security.dll => 0xf4ad5f89 => 104
	i32 4151237749, ; 224: System.Core => 0xf76edc75 => 13
	i32 4182413190, ; 225: Xamarin.AndroidX.Lifecycle.ViewModelSavedState.dll => 0xf94a8f86 => 61
	i32 4186595366, ; 226: ZXing.Net.Mobile.Core => 0xf98a6026 => 90
	i32 4213026141, ; 227: System.Diagnostics.DiagnosticSource.dll => 0xfb1dad5d => 14
	i32 4260525087, ; 228: System.Buffers => 0xfdf2741f => 12
	i32 4292120959 ; 229: Xamarin.AndroidX.Lifecycle.ViewModelSavedState => 0xffd4917f => 61
], align 4
@assembly_image_cache_indices = local_unnamed_addr constant [230 x i32] [
	i32 59, i32 89, i32 11, i32 83, i32 73, i32 73, i32 40, i32 24, ; 0..7
	i32 5, i32 74, i32 38, i32 29, i32 108, i32 54, i32 114, i32 102, ; 8..15
	i32 43, i32 58, i32 52, i32 30, i32 17, i32 92, i32 56, i32 16, ; 16..23
	i32 25, i32 42, i32 82, i32 106, i32 51, i32 9, i32 15, i32 52, ; 24..31
	i32 63, i32 109, i32 24, i32 96, i32 107, i32 100, i32 47, i32 79, ; 32..39
	i32 35, i32 22, i32 23, i32 99, i32 98, i32 70, i32 114, i32 29, ; 40..47
	i32 89, i32 92, i32 11, i32 28, i32 56, i32 6, i32 4, i32 106, ; 48..55
	i32 72, i32 34, i32 86, i32 60, i32 15, i32 94, i32 77, i32 67, ; 56..63
	i32 35, i32 78, i32 49, i32 112, i32 103, i32 72, i32 64, i32 44, ; 64..71
	i32 19, i32 27, i32 107, i32 87, i32 99, i32 33, i32 10, i32 113, ; 72..79
	i32 93, i32 26, i32 48, i32 3, i32 62, i32 81, i32 46, i32 2, ; 80..87
	i32 113, i32 20, i32 75, i32 88, i32 43, i32 108, i32 39, i32 74, ; 88..95
	i32 13, i32 4, i32 51, i32 62, i32 88, i32 68, i32 82, i32 87, ; 96..103
	i32 36, i32 5, i32 65, i32 12, i32 60, i32 57, i32 20, i32 18, ; 104..111
	i32 53, i32 84, i32 85, i32 26, i32 109, i32 2, i32 77, i32 63, ; 112..119
	i32 65, i32 55, i32 71, i32 31, i32 93, i32 25, i32 94, i32 27, ; 120..127
	i32 84, i32 69, i32 90, i32 111, i32 42, i32 1, i32 7, i32 91, ; 128..135
	i32 97, i32 59, i32 78, i32 46, i32 50, i32 58, i32 112, i32 75, ; 136..143
	i32 105, i32 30, i32 33, i32 83, i32 80, i32 44, i32 21, i32 0, ; 144..151
	i32 80, i32 76, i32 101, i32 9, i32 81, i32 18, i32 32, i32 49, ; 152..159
	i32 54, i32 6, i32 66, i32 105, i32 28, i32 3, i32 95, i32 48, ; 160..167
	i32 110, i32 104, i32 39, i32 37, i32 0, i32 111, i32 47, i32 95, ; 168..175
	i32 36, i32 67, i32 53, i32 45, i32 7, i32 71, i32 19, i32 103, ; 176..183
	i32 21, i32 1, i32 23, i32 50, i32 8, i32 96, i32 41, i32 37, ; 184..191
	i32 22, i32 85, i32 101, i32 69, i32 70, i32 86, i32 32, i32 57, ; 192..199
	i32 8, i32 102, i32 38, i32 41, i32 98, i32 31, i32 66, i32 14, ; 200..207
	i32 55, i32 40, i32 64, i32 17, i32 91, i32 76, i32 45, i32 100, ; 208..215
	i32 79, i32 68, i32 97, i32 34, i32 16, i32 110, i32 10, i32 104, ; 216..223
	i32 13, i32 61, i32 90, i32 14, i32 12, i32 61 ; 224..229
], align 4

@marshal_methods_number_of_classes = local_unnamed_addr constant i32 0, align 4

; marshal_methods_class_cache
@marshal_methods_class_cache = global [0 x %struct.MarshalMethodsManagedClass] [
], align 4; end of 'marshal_methods_class_cache' array


@get_function_pointer = internal unnamed_addr global void (i32, i32, i32, i8**)* null, align 4

; Function attributes: "frame-pointer"="all" "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+d32,+dsp,+fp64,+neon,+thumb-mode,+vfp2,+vfp2sp,+vfp3,+vfp3d16,+vfp3d16sp,+vfp3sp,-aes,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fullfp16,-sha2,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" uwtable willreturn writeonly
define void @xamarin_app_init (void (i32, i32, i32, i8**)* %fn) local_unnamed_addr #0
{
	store void (i32, i32, i32, i8**)* %fn, void (i32, i32, i32, i8**)** @get_function_pointer, align 4
	ret void
}

; Names of classes in which marshal methods reside
@mm_class_names = local_unnamed_addr constant [0 x i8*] zeroinitializer, align 4
@__MarshalMethodName_name.0 = internal constant [1 x i8] c"\00", align 1

; mm_method_names
@mm_method_names = local_unnamed_addr constant [1 x %struct.MarshalMethodName] [
	; 0
	%struct.MarshalMethodName {
		i64 0, ; id 0x0; name: 
		i8* getelementptr inbounds ([1 x i8], [1 x i8]* @__MarshalMethodName_name.0, i32 0, i32 0); name
	}
], align 8; end of 'mm_method_names' array


attributes #0 = { "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" uwtable willreturn writeonly "frame-pointer"="all" "target-cpu"="generic" "target-features"="+armv7-a,+d32,+dsp,+fp64,+neon,+thumb-mode,+vfp2,+vfp2sp,+vfp3,+vfp3d16,+vfp3d16sp,+vfp3sp,-aes,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fullfp16,-sha2,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" }
attributes #1 = { "min-legal-vector-width"="0" mustprogress "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" uwtable "frame-pointer"="all" "target-cpu"="generic" "target-features"="+armv7-a,+d32,+dsp,+fp64,+neon,+thumb-mode,+vfp2,+vfp2sp,+vfp3,+vfp3d16,+vfp3d16sp,+vfp3sp,-aes,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fullfp16,-sha2,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 1, !"min_enum_size", i32 4}
!3 = !{!"Xamarin.Android remotes/origin/d17-5 @ a8a26c7b003e2524cc98acb2c2ffc2ddea0f6692"}
!llvm.linker.options = !{}
