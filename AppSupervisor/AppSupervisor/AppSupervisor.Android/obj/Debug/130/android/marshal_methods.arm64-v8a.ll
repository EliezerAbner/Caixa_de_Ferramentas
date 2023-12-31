; ModuleID = 'obj\Debug\130\android\marshal_methods.arm64-v8a.ll'
source_filename = "obj\Debug\130\android\marshal_methods.arm64-v8a.ll"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-android"


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
@assembly_image_cache = local_unnamed_addr global [0 x %struct.MonoImage*] zeroinitializer, align 8
; Each entry maps hash of an assembly name to an index into the `assembly_image_cache` array
@assembly_image_cache_hashes = local_unnamed_addr constant [232 x i64] [
	i64 24362543149721218, ; 0: Xamarin.AndroidX.DynamicAnimation => 0x568d9a9a43a682 => 51
	i64 120698629574877762, ; 1: Mono.Android => 0x1accec39cafe242 => 8
	i64 210515253464952879, ; 2: Xamarin.AndroidX.Collection.dll => 0x2ebe681f694702f => 41
	i64 232391251801502327, ; 3: Xamarin.AndroidX.SavedState.dll => 0x3399e9cbc897277 => 73
	i64 263803244706540312, ; 4: Rg.Plugins.Popup.dll => 0x3a937a743542b18 => 12
	i64 295915112840604065, ; 5: Xamarin.AndroidX.SlidingPaneLayout => 0x41b4d3a3088a9a1 => 74
	i64 634308326490598313, ; 6: Xamarin.AndroidX.Lifecycle.Runtime.dll => 0x8cd840fee8b6ba9 => 60
	i64 702024105029695270, ; 7: System.Drawing.Common => 0x9be17343c0e7726 => 99
	i64 720058930071658100, ; 8: Xamarin.AndroidX.Legacy.Support.Core.UI => 0x9fe29c82844de74 => 54
	i64 872800313462103108, ; 9: Xamarin.AndroidX.DrawerLayout => 0xc1ccf42c3c21c44 => 50
	i64 940822596282819491, ; 10: System.Transactions => 0xd0e792aa81923a3 => 97
	i64 996343623809489702, ; 11: Xamarin.Forms.Platform => 0xdd3b93f3b63db26 => 87
	i64 1000557547492888992, ; 12: Mono.Security.dll => 0xde2b1c9cba651a0 => 105
	i64 1120440138749646132, ; 13: Xamarin.Google.Android.Material.dll => 0xf8c9a5eae431534 => 89
	i64 1315114680217950157, ; 14: Xamarin.AndroidX.Arch.Core.Common.dll => 0x124039d5794ad7cd => 36
	i64 1342439039765371018, ; 15: Xamarin.Android.Support.Fragment => 0x12a14d31b1d4d88a => 28
	i64 1425944114962822056, ; 16: System.Runtime.Serialization.dll => 0x13c9f89e19eaf3a8 => 3
	i64 1624659445732251991, ; 17: Xamarin.AndroidX.AppCompat.AppCompatResources.dll => 0x168bf32877da9957 => 34
	i64 1628611045998245443, ; 18: Xamarin.AndroidX.Lifecycle.ViewModelSavedState.dll => 0x1699fd1e1a00b643 => 62
	i64 1636321030536304333, ; 19: Xamarin.AndroidX.Legacy.Support.Core.Utils.dll => 0x16b5614ec39e16cd => 55
	i64 1731380447121279447, ; 20: Newtonsoft.Json => 0x18071957e9b889d7 => 11
	i64 1743969030606105336, ; 21: System.Memory.dll => 0x1833d297e88f2af8 => 17
	i64 1795316252682057001, ; 22: Xamarin.AndroidX.AppCompat.dll => 0x18ea3e9eac997529 => 35
	i64 1836611346387731153, ; 23: Xamarin.AndroidX.SavedState => 0x197cf449ebe482d1 => 73
	i64 1875917498431009007, ; 24: Xamarin.AndroidX.Annotation.dll => 0x1a08990699eb70ef => 32
	i64 1938067011858688285, ; 25: Xamarin.Android.Support.v4.dll => 0x1ae565add0bd691d => 30
	i64 1981742497975770890, ; 26: Xamarin.AndroidX.Lifecycle.ViewModel.dll => 0x1b80904d5c241f0a => 61
	i64 2133195048986300728, ; 27: Newtonsoft.Json.dll => 0x1d9aa1984b735138 => 11
	i64 2136356949452311481, ; 28: Xamarin.AndroidX.MultiDex.dll => 0x1da5dd539d8acbb9 => 66
	i64 2165725771938924357, ; 29: Xamarin.AndroidX.Browser => 0x1e0e341d75540745 => 39
	i64 2262844636196693701, ; 30: Xamarin.AndroidX.DrawerLayout.dll => 0x1f673d352266e6c5 => 50
	i64 2284400282711631002, ; 31: System.Web.Services => 0x1fb3d1f42fd4249a => 103
	i64 2329709569556905518, ; 32: Xamarin.AndroidX.Lifecycle.LiveData.Core.dll => 0x2054ca829b447e2e => 58
	i64 2337758774805907496, ; 33: System.Runtime.CompilerServices.Unsafe => 0x207163383edbc828 => 20
	i64 2470498323731680442, ; 34: Xamarin.AndroidX.CoordinatorLayout => 0x2248f922dc398cba => 45
	i64 2479423007379663237, ; 35: Xamarin.AndroidX.VectorDrawable.Animated.dll => 0x2268ae16b2cba985 => 78
	i64 2497223385847772520, ; 36: System.Runtime => 0x22a7eb7046413568 => 21
	i64 2547086958574651984, ; 37: Xamarin.AndroidX.Activity.dll => 0x2359121801df4a50 => 31
	i64 2592350477072141967, ; 38: System.Xml.dll => 0x23f9e10627330e8f => 22
	i64 2624866290265602282, ; 39: mscorlib.dll => 0x246d65fbde2db8ea => 9
	i64 2694427813909235223, ; 40: Xamarin.AndroidX.Preference.dll => 0x256487d230fe0617 => 70
	i64 2783046991838674048, ; 41: System.Runtime.CompilerServices.Unsafe.dll => 0x269f5e7e6dc37c80 => 20
	i64 2960931600190307745, ; 42: Xamarin.Forms.Core => 0x2917579a49927da1 => 84
	i64 3017704767998173186, ; 43: Xamarin.Google.Android.Material => 0x29e10a7f7d88a002 => 89
	i64 3022227708164871115, ; 44: Xamarin.Android.Support.Media.Compat.dll => 0x29f11c168f8293cb => 29
	i64 3289520064315143713, ; 45: Xamarin.AndroidX.Lifecycle.Common => 0x2da6b911e3063621 => 57
	i64 3303437397778967116, ; 46: Xamarin.AndroidX.Annotation.Experimental => 0x2dd82acf985b2a4c => 33
	i64 3311221304742556517, ; 47: System.Numerics.Vectors.dll => 0x2df3d23ba9e2b365 => 19
	i64 3416746680075214309, ; 48: AppSupervisor.dll => 0x2f6ab900b960dde5 => 4
	i64 3493805808809882663, ; 49: Xamarin.AndroidX.Tracing.Tracing.dll => 0x307c7ddf444f3427 => 76
	i64 3522470458906976663, ; 50: Xamarin.AndroidX.SwipeRefreshLayout => 0x30e2543832f52197 => 75
	i64 3531994851595924923, ; 51: System.Numerics => 0x31042a9aade235bb => 18
	i64 3571415421602489686, ; 52: System.Runtime.dll => 0x319037675df7e556 => 21
	i64 3716579019761409177, ; 53: netstandard.dll => 0x3393f0ed5c8c5c99 => 1
	i64 3727469159507183293, ; 54: Xamarin.AndroidX.RecyclerView => 0x33baa1739ba646bd => 72
	i64 3772598417116884899, ; 55: Xamarin.AndroidX.DynamicAnimation.dll => 0x345af645b473efa3 => 51
	i64 3966267475168208030, ; 56: System.Memory => 0x370b03412596249e => 17
	i64 4255796613242758200, ; 57: zxing.portable => 0x3b0fa078b8a52438 => 94
	i64 4292233171264798357, ; 58: ZXing.Net.Mobile.Core.dll => 0x3b911353fa62fe95 => 91
	i64 4525561845656915374, ; 59: System.ServiceModel.Internals => 0x3ece06856b710dae => 104
	i64 4636684751163556186, ; 60: Xamarin.AndroidX.VersionedParcelable.dll => 0x4058d0370893015a => 80
	i64 4782108999019072045, ; 61: Xamarin.AndroidX.AsyncLayoutInflater.dll => 0x425d76cc43bb0a2d => 38
	i64 4794310189461587505, ; 62: Xamarin.AndroidX.Activity => 0x4288cfb749e4c631 => 31
	i64 4795410492532947900, ; 63: Xamarin.AndroidX.SwipeRefreshLayout.dll => 0x428cb86f8f9b7bbc => 75
	i64 4977290526519447826, ; 64: AppSupervisor.Android => 0x4512e35cf11bd112 => 0
	i64 5142919913060024034, ; 65: Xamarin.Forms.Platform.Android.dll => 0x475f52699e39bee2 => 86
	i64 5203618020066742981, ; 66: Xamarin.Essentials => 0x4836f704f0e652c5 => 83
	i64 5205316157927637098, ; 67: Xamarin.AndroidX.LocalBroadcastManager => 0x483cff7778e0c06a => 64
	i64 5233983725610684227, ; 68: FastAndroidCamera => 0x48a2d877b5334f43 => 5
	i64 5348796042099802469, ; 69: Xamarin.AndroidX.Media => 0x4a3abda9415fc165 => 65
	i64 5375264076663995773, ; 70: Xamarin.Forms.PancakeView => 0x4a98c632c779bd7d => 85
	i64 5376510917114486089, ; 71: Xamarin.AndroidX.VectorDrawable.Animated => 0x4a9d3431719e5d49 => 78
	i64 5408338804355907810, ; 72: Xamarin.AndroidX.Transition => 0x4b0e477cea9840e2 => 77
	i64 5446034149219586269, ; 73: System.Diagnostics.Debug => 0x4b94333452e150dd => 109
	i64 5451019430259338467, ; 74: Xamarin.AndroidX.ConstraintLayout.dll => 0x4ba5e94a845c2ce3 => 44
	i64 5507995362134886206, ; 75: System.Core.dll => 0x4c705499688c873e => 14
	i64 5692067934154308417, ; 76: Xamarin.AndroidX.ViewPager2.dll => 0x4efe49a0d4a8bb41 => 82
	i64 5757522595884336624, ; 77: Xamarin.AndroidX.Concurrent.Futures.dll => 0x4fe6d44bd9f885f0 => 42
	i64 5767696078500135884, ; 78: Xamarin.Android.Support.Annotations.dll => 0x500af9065b6a03cc => 24
	i64 5767749323661124970, ; 79: ZXing.Net.Mobile.Core => 0x500b29737652256a => 91
	i64 5814345312393086621, ; 80: Xamarin.AndroidX.Preference => 0x50b0b44182a5c69d => 70
	i64 5896680224035167651, ; 81: Xamarin.AndroidX.Lifecycle.LiveData.dll => 0x51d5376bfbafdda3 => 59
	i64 6085203216496545422, ; 82: Xamarin.Forms.Platform.dll => 0x5472fc15a9574e8e => 87
	i64 6086316965293125504, ; 83: FormsViewGroup.dll => 0x5476f10882baef80 => 6
	i64 6319713645133255417, ; 84: Xamarin.AndroidX.Lifecycle.Runtime => 0x57b42213b45b52f9 => 60
	i64 6401687960814735282, ; 85: Xamarin.AndroidX.Lifecycle.LiveData.Core => 0x58d75d486341cfb2 => 58
	i64 6504860066809920875, ; 86: Xamarin.AndroidX.Browser.dll => 0x5a45e7c43bd43d6b => 39
	i64 6548213210057960872, ; 87: Xamarin.AndroidX.CustomView.dll => 0x5adfed387b066da8 => 48
	i64 6588599331800941662, ; 88: Xamarin.Android.Support.v4 => 0x5b6f682f335f045e => 30
	i64 6591024623626361694, ; 89: System.Web.Services.dll => 0x5b7805f9751a1b5e => 103
	i64 6659513131007730089, ; 90: Xamarin.AndroidX.Legacy.Support.Core.UI.dll => 0x5c6b57e8b6c3e1a9 => 54
	i64 6876862101832370452, ; 91: System.Xml.Linq => 0x5f6f85a57d108914 => 23
	i64 6894844156784520562, ; 92: System.Numerics.Vectors => 0x5faf683aead1ad72 => 19
	i64 7036436454368433159, ; 93: Xamarin.AndroidX.Legacy.Support.V4.dll => 0x61a671acb33d5407 => 56
	i64 7103753931438454322, ; 94: Xamarin.AndroidX.Interpolator.dll => 0x62959a90372c7632 => 53
	i64 7488575175965059935, ; 95: System.Xml.Linq.dll => 0x67ecc3724534ab5f => 23
	i64 7489048572193775167, ; 96: System.ObjectModel => 0x67ee71ff6b419e3f => 110
	i64 7635363394907363464, ; 97: Xamarin.Forms.Core.dll => 0x69f6428dc4795888 => 84
	i64 7637365915383206639, ; 98: Xamarin.Essentials.dll => 0x69fd5fd5e61792ef => 83
	i64 7654504624184590948, ; 99: System.Net.Http => 0x6a3a4366801b8264 => 2
	i64 7702918024138448955, ; 100: MySqlConnector => 0x6ae6432192b9e03b => 10
	i64 7820441508502274321, ; 101: System.Data => 0x6c87ca1e14ff8111 => 96
	i64 7836164640616011524, ; 102: Xamarin.AndroidX.AppCompat.AppCompatResources => 0x6cbfa6390d64d704 => 34
	i64 8044118961405839122, ; 103: System.ComponentModel.Composition => 0x6fa2739369944712 => 102
	i64 8064050204834738623, ; 104: System.Collections.dll => 0x6fe942efa61731bf => 107
	i64 8083354569033831015, ; 105: Xamarin.AndroidX.Lifecycle.Common.dll => 0x702dd82730cad267 => 57
	i64 8087206902342787202, ; 106: System.Diagnostics.DiagnosticSource => 0x703b87d46f3aa082 => 15
	i64 8101777744205214367, ; 107: Xamarin.Android.Support.Annotations => 0x706f4beeec84729f => 24
	i64 8103644804370223335, ; 108: System.Data.DataSetExtensions.dll => 0x7075ee03be6d50e7 => 98
	i64 8167236081217502503, ; 109: Java.Interop.dll => 0x7157d9f1a9b8fd27 => 7
	i64 8185542183669246576, ; 110: System.Collections => 0x7198e33f4794aa70 => 107
	i64 8290740647658429042, ; 111: System.Runtime.Extensions => 0x730ea0b15c929a72 => 108
	i64 8398329775253868912, ; 112: Xamarin.AndroidX.ConstraintLayout.Core.dll => 0x748cdc6f3097d170 => 43
	i64 8400357532724379117, ; 113: Xamarin.AndroidX.Navigation.UI.dll => 0x749410ab44503ded => 69
	i64 8601935802264776013, ; 114: Xamarin.AndroidX.Transition.dll => 0x7760370982b4ed4d => 77
	i64 8626175481042262068, ; 115: Java.Interop => 0x77b654e585b55834 => 7
	i64 8639588376636138208, ; 116: Xamarin.AndroidX.Navigation.Runtime => 0x77e5fbdaa2fda2e0 => 68
	i64 8684531736582871431, ; 117: System.IO.Compression.FileSystem => 0x7885a79a0fa0d987 => 101
	i64 8725526185868997716, ; 118: System.Diagnostics.DiagnosticSource.dll => 0x79174bd613173454 => 15
	i64 9312692141327339315, ; 119: Xamarin.AndroidX.ViewPager2 => 0x813d54296a634f33 => 82
	i64 9324707631942237306, ; 120: Xamarin.AndroidX.AppCompat => 0x8168042fd44a7c7a => 35
	i64 9584643793929893533, ; 121: System.IO.dll => 0x85037ebfbbd7f69d => 113
	i64 9659729154652888475, ; 122: System.Text.RegularExpressions => 0x860e407c9991dd9b => 114
	i64 9662334977499516867, ; 123: System.Numerics.dll => 0x8617827802b0cfc3 => 18
	i64 9678050649315576968, ; 124: Xamarin.AndroidX.CoordinatorLayout.dll => 0x864f57c9feb18c88 => 45
	i64 9711637524876806384, ; 125: Xamarin.AndroidX.Media.dll => 0x86c6aadfd9a2c8f0 => 65
	i64 9808709177481450983, ; 126: Mono.Android.dll => 0x881f890734e555e7 => 8
	i64 9825649861376906464, ; 127: Xamarin.AndroidX.Concurrent.Futures => 0x885bb87d8abc94e0 => 42
	i64 9834056768316610435, ; 128: System.Transactions.dll => 0x8879968718899783 => 97
	i64 9998632235833408227, ; 129: Mono.Security => 0x8ac2470b209ebae3 => 105
	i64 10038780035334861115, ; 130: System.Net.Http.dll => 0x8b50e941206af13b => 2
	i64 10229024438826829339, ; 131: Xamarin.AndroidX.CustomView => 0x8df4cb880b10061b => 48
	i64 10360651442923773544, ; 132: System.Text.Encoding => 0x8fc86d98211c1e68 => 112
	i64 10376576884623852283, ; 133: Xamarin.AndroidX.Tracing.Tracing => 0x900101b2f888c2fb => 76
	i64 10430153318873392755, ; 134: Xamarin.AndroidX.Core => 0x90bf592ea44f6673 => 46
	i64 10566960649245365243, ; 135: System.Globalization.dll => 0x92a562b96dcd13fb => 115
	i64 10714184849103829812, ; 136: System.Runtime.Extensions.dll => 0x94b06e5aa4b4bb34 => 108
	i64 10847732767863316357, ; 137: Xamarin.AndroidX.Arch.Core.Common => 0x968ae37a86db9f85 => 36
	i64 11023048688141570732, ; 138: System.Core => 0x98f9bc61168392ac => 14
	i64 11037814507248023548, ; 139: System.Xml => 0x992e31d0412bf7fc => 22
	i64 11162124722117608902, ; 140: Xamarin.AndroidX.ViewPager => 0x9ae7d54b986d05c6 => 81
	i64 11340910727871153756, ; 141: Xamarin.AndroidX.CursorAdapter => 0x9d630238642d465c => 47
	i64 11376461258732682436, ; 142: Xamarin.Android.Support.Compat => 0x9de14f3d5fc13cc4 => 25
	i64 11392833485892708388, ; 143: Xamarin.AndroidX.Print.dll => 0x9e1b79b18fcf6824 => 71
	i64 11529969570048099689, ; 144: Xamarin.AndroidX.ViewPager.dll => 0xa002ae3c4dc7c569 => 81
	i64 11578238080964724296, ; 145: Xamarin.AndroidX.Legacy.Support.V4 => 0xa0ae2a30c4cd8648 => 56
	i64 11580057168383206117, ; 146: Xamarin.AndroidX.Annotation => 0xa0b4a0a4103262e5 => 32
	i64 11597940890313164233, ; 147: netstandard => 0xa0f429ca8d1805c9 => 1
	i64 11672361001936329215, ; 148: Xamarin.AndroidX.Interpolator => 0xa1fc8e7d0a8999ff => 53
	i64 11683710219442713716, ; 149: ZXingNetMobile => 0xa224e08aa87bf474 => 95
	i64 11743665907891708234, ; 150: System.Threading.Tasks => 0xa2f9e1ec30c0214a => 106
	i64 12036099219279441448, ; 151: ZXing.Net.Mobile.Forms => 0xa708d0784e81ee28 => 93
	i64 12042975041017748384, ; 152: AppSupervisor => 0xa7213dfe4ec21ba0 => 4
	i64 12102847907131387746, ; 153: System.Buffers => 0xa7f5f40c43256f62 => 13
	i64 12137774235383566651, ; 154: Xamarin.AndroidX.VectorDrawable => 0xa872095bbfed113b => 79
	i64 12414299427252656003, ; 155: Xamarin.Android.Support.Compat.dll => 0xac48738e28bad783 => 25
	i64 12451044538927396471, ; 156: Xamarin.AndroidX.Fragment.dll => 0xaccaff0a2955b677 => 52
	i64 12466513435562512481, ; 157: Xamarin.AndroidX.Loader.dll => 0xad01f3eb52569061 => 63
	i64 12487638416075308985, ; 158: Xamarin.AndroidX.DocumentFile.dll => 0xad4d00fa21b0bfb9 => 49
	i64 12538491095302438457, ; 159: Xamarin.AndroidX.CardView.dll => 0xae01ab382ae67e39 => 40
	i64 12550732019250633519, ; 160: System.IO.Compression => 0xae2d28465e8e1b2f => 100
	i64 12551451704392164662, ; 161: MySqlConnector.dll => 0xae2fb6d31fc42536 => 10
	i64 12629983860853673214, ; 162: ZXing.Net.Mobile.Forms.Android.dll => 0xaf46b767a9198cfe => 92
	i64 12700543734426720211, ; 163: Xamarin.AndroidX.Collection => 0xb041653c70d157d3 => 41
	i64 12708238894395270091, ; 164: System.IO => 0xb05cbbf17d3ba3cb => 113
	i64 12952608645614506925, ; 165: Xamarin.Android.Support.Core.Utils => 0xb3c0e8eff48193ad => 27
	i64 12963446364377008305, ; 166: System.Drawing.Common.dll => 0xb3e769c8fd8548b1 => 99
	i64 13358059602087096138, ; 167: Xamarin.Android.Support.Fragment.dll => 0xb9615c6f1ee5af4a => 28
	i64 13370592475155966277, ; 168: System.Runtime.Serialization => 0xb98de304062ea945 => 3
	i64 13401370062847626945, ; 169: Xamarin.AndroidX.VectorDrawable.dll => 0xb9fb3b1193964ec1 => 79
	i64 13404347523447273790, ; 170: Xamarin.AndroidX.ConstraintLayout.Core => 0xba05cf0da4f6393e => 43
	i64 13454009404024712428, ; 171: Xamarin.Google.Guava.ListenableFuture => 0xbab63e4543a86cec => 90
	i64 13491513212026656886, ; 172: Xamarin.AndroidX.Arch.Core.Runtime.dll => 0xbb3b7bc905569876 => 37
	i64 13572454107664307259, ; 173: Xamarin.AndroidX.RecyclerView.dll => 0xbc5b0b19d99f543b => 72
	i64 13647894001087880694, ; 174: System.Data.dll => 0xbd670f48cb071df6 => 96
	i64 13959074834287824816, ; 175: Xamarin.AndroidX.Fragment => 0xc1b8989a7ad20fb0 => 52
	i64 13967638549803255703, ; 176: Xamarin.Forms.Platform.Android => 0xc1d70541e0134797 => 86
	i64 14124974489674258913, ; 177: Xamarin.AndroidX.CardView => 0xc405fd76067d19e1 => 40
	i64 14125464355221830302, ; 178: System.Threading.dll => 0xc407bafdbc707a9e => 111
	i64 14172845254133543601, ; 179: Xamarin.AndroidX.MultiDex => 0xc4b00faaed35f2b1 => 66
	i64 14261073672896646636, ; 180: Xamarin.AndroidX.Print => 0xc5e982f274ae0dec => 71
	i64 14400856865250966808, ; 181: Xamarin.Android.Support.Core.UI => 0xc7da1f051a877d18 => 26
	i64 14486659737292545672, ; 182: Xamarin.AndroidX.Lifecycle.LiveData => 0xc90af44707469e88 => 59
	i64 14644440854989303794, ; 183: Xamarin.AndroidX.LocalBroadcastManager.dll => 0xcb3b815e37daeff2 => 64
	i64 14792063746108907174, ; 184: Xamarin.Google.Guava.ListenableFuture.dll => 0xcd47f79af9c15ea6 => 90
	i64 14852515768018889994, ; 185: Xamarin.AndroidX.CursorAdapter.dll => 0xce1ebc6625a76d0a => 47
	i64 14954388675289411854, ; 186: ZXing.Net.Mobile.Forms.dll => 0xcf88a944b7bff10e => 93
	i64 14987728460634540364, ; 187: System.IO.Compression.dll => 0xcfff1ba06622494c => 100
	i64 14988210264188246988, ; 188: Xamarin.AndroidX.DocumentFile => 0xd000d1d307cddbcc => 49
	i64 15076659072870671916, ; 189: System.ObjectModel.dll => 0xd13b0d8c1620662c => 110
	i64 15370334346939861994, ; 190: Xamarin.AndroidX.Core.dll => 0xd54e65a72c560bea => 46
	i64 15457813392950723921, ; 191: Xamarin.Android.Support.Media.Compat => 0xd6852f61c31a8551 => 29
	i64 15526743539506359484, ; 192: System.Text.Encoding.dll => 0xd77a12fc26de2cbc => 112
	i64 15582737692548360875, ; 193: Xamarin.AndroidX.Lifecycle.ViewModelSavedState => 0xd841015ed86f6aab => 62
	i64 15609085926864131306, ; 194: System.dll => 0xd89e9cf3334914ea => 16
	i64 15777549416145007739, ; 195: Xamarin.AndroidX.SlidingPaneLayout.dll => 0xdaf51d99d77eb47b => 74
	i64 15810740023422282496, ; 196: Xamarin.Forms.Xaml => 0xdb6b08484c22eb00 => 88
	i64 15817206913877585035, ; 197: System.Threading.Tasks.dll => 0xdb8201e29086ac8b => 106
	i64 15851975962649584118, ; 198: zxing.portable.dll => 0xdbfd882691c261f6 => 94
	i64 16107354805249926211, ; 199: ZXingNetMobile.dll => 0xdf88d1dade1a6443 => 95
	i64 16119456071779071829, ; 200: FastAndroidCamera.dll => 0xdfb3cfe48ae7b755 => 5
	i64 16154507427712707110, ; 201: System => 0xe03056ea4e39aa26 => 16
	i64 16526376532108668976, ; 202: ZXing.Net.Mobile.Forms.Android => 0xe5597be53cb07030 => 92
	i64 16565028646146589191, ; 203: System.ComponentModel.Composition.dll => 0xe5e2cdc9d3bcc207 => 102
	i64 16621146507174665210, ; 204: Xamarin.AndroidX.ConstraintLayout => 0xe6aa2caf87dedbfa => 44
	i64 16677317093839702854, ; 205: Xamarin.AndroidX.Navigation.UI => 0xe771bb8960dd8b46 => 69
	i64 16822611501064131242, ; 206: System.Data.DataSetExtensions => 0xe975ec07bb5412aa => 98
	i64 16833383113903931215, ; 207: mscorlib => 0xe99c30c1484d7f4f => 9
	i64 16890310621557459193, ; 208: System.Text.RegularExpressions.dll => 0xea66700587f088f9 => 114
	i64 16932527889823454152, ; 209: Xamarin.Android.Support.Core.Utils.dll => 0xeafc6c67465253c8 => 27
	i64 17024911836938395553, ; 210: Xamarin.AndroidX.Annotation.Experimental.dll => 0xec44a31d250e5fa1 => 33
	i64 17031351772568316411, ; 211: Xamarin.AndroidX.Navigation.Common.dll => 0xec5b843380a769fb => 67
	i64 17037200463775726619, ; 212: Xamarin.AndroidX.Legacy.Support.Core.Utils => 0xec704b8e0a78fc1b => 55
	i64 17285063141349522879, ; 213: Rg.Plugins.Popup => 0xefe0e158cc55fdbf => 12
	i64 17428701562824544279, ; 214: Xamarin.Android.Support.Core.UI.dll => 0xf1df2fbaec73d017 => 26
	i64 17544493274320527064, ; 215: Xamarin.AndroidX.AsyncLayoutInflater => 0xf37a8fada41aded8 => 38
	i64 17627500474728259406, ; 216: System.Globalization => 0xf4a176498a351f4e => 115
	i64 17685921127322830888, ; 217: System.Diagnostics.Debug.dll => 0xf571038fafa74828 => 109
	i64 17704177640604968747, ; 218: Xamarin.AndroidX.Loader => 0xf5b1dfc36cac272b => 63
	i64 17710060891934109755, ; 219: Xamarin.AndroidX.Lifecycle.ViewModel => 0xf5c6c68c9e45303b => 61
	i64 17827832363535584534, ; 220: Xamarin.Forms.PancakeView.dll => 0xf7692f1427c04d16 => 85
	i64 17838668724098252521, ; 221: System.Buffers.dll => 0xf78faeb0f5bf3ee9 => 13
	i64 17866660055732392265, ; 222: AppSupervisor.Android.dll => 0xf7f320a8b8971149 => 0
	i64 17882897186074144999, ; 223: FormsViewGroup => 0xf82cd03e3ac830e7 => 6
	i64 17892495832318972303, ; 224: Xamarin.Forms.Xaml.dll => 0xf84eea293687918f => 88
	i64 17928294245072900555, ; 225: System.IO.Compression.FileSystem.dll => 0xf8ce18a0b24011cb => 101
	i64 18025913125965088385, ; 226: System.Threading => 0xfa28e87b91334681 => 111
	i64 18116111925905154859, ; 227: Xamarin.AndroidX.Arch.Core.Runtime => 0xfb695bd036cb632b => 37
	i64 18121036031235206392, ; 228: Xamarin.AndroidX.Navigation.Common => 0xfb7ada42d3d42cf8 => 67
	i64 18129453464017766560, ; 229: System.ServiceModel.Internals.dll => 0xfb98c1df1ec108a0 => 104
	i64 18305135509493619199, ; 230: Xamarin.AndroidX.Navigation.Runtime.dll => 0xfe08e7c2d8c199ff => 68
	i64 18380184030268848184 ; 231: Xamarin.AndroidX.VersionedParcelable => 0xff1387fe3e7b7838 => 80
], align 8
@assembly_image_cache_indices = local_unnamed_addr constant [232 x i32] [
	i32 51, i32 8, i32 41, i32 73, i32 12, i32 74, i32 60, i32 99, ; 0..7
	i32 54, i32 50, i32 97, i32 87, i32 105, i32 89, i32 36, i32 28, ; 8..15
	i32 3, i32 34, i32 62, i32 55, i32 11, i32 17, i32 35, i32 73, ; 16..23
	i32 32, i32 30, i32 61, i32 11, i32 66, i32 39, i32 50, i32 103, ; 24..31
	i32 58, i32 20, i32 45, i32 78, i32 21, i32 31, i32 22, i32 9, ; 32..39
	i32 70, i32 20, i32 84, i32 89, i32 29, i32 57, i32 33, i32 19, ; 40..47
	i32 4, i32 76, i32 75, i32 18, i32 21, i32 1, i32 72, i32 51, ; 48..55
	i32 17, i32 94, i32 91, i32 104, i32 80, i32 38, i32 31, i32 75, ; 56..63
	i32 0, i32 86, i32 83, i32 64, i32 5, i32 65, i32 85, i32 78, ; 64..71
	i32 77, i32 109, i32 44, i32 14, i32 82, i32 42, i32 24, i32 91, ; 72..79
	i32 70, i32 59, i32 87, i32 6, i32 60, i32 58, i32 39, i32 48, ; 80..87
	i32 30, i32 103, i32 54, i32 23, i32 19, i32 56, i32 53, i32 23, ; 88..95
	i32 110, i32 84, i32 83, i32 2, i32 10, i32 96, i32 34, i32 102, ; 96..103
	i32 107, i32 57, i32 15, i32 24, i32 98, i32 7, i32 107, i32 108, ; 104..111
	i32 43, i32 69, i32 77, i32 7, i32 68, i32 101, i32 15, i32 82, ; 112..119
	i32 35, i32 113, i32 114, i32 18, i32 45, i32 65, i32 8, i32 42, ; 120..127
	i32 97, i32 105, i32 2, i32 48, i32 112, i32 76, i32 46, i32 115, ; 128..135
	i32 108, i32 36, i32 14, i32 22, i32 81, i32 47, i32 25, i32 71, ; 136..143
	i32 81, i32 56, i32 32, i32 1, i32 53, i32 95, i32 106, i32 93, ; 144..151
	i32 4, i32 13, i32 79, i32 25, i32 52, i32 63, i32 49, i32 40, ; 152..159
	i32 100, i32 10, i32 92, i32 41, i32 113, i32 27, i32 99, i32 28, ; 160..167
	i32 3, i32 79, i32 43, i32 90, i32 37, i32 72, i32 96, i32 52, ; 168..175
	i32 86, i32 40, i32 111, i32 66, i32 71, i32 26, i32 59, i32 64, ; 176..183
	i32 90, i32 47, i32 93, i32 100, i32 49, i32 110, i32 46, i32 29, ; 184..191
	i32 112, i32 62, i32 16, i32 74, i32 88, i32 106, i32 94, i32 95, ; 192..199
	i32 5, i32 16, i32 92, i32 102, i32 44, i32 69, i32 98, i32 9, ; 200..207
	i32 114, i32 27, i32 33, i32 67, i32 55, i32 12, i32 26, i32 38, ; 208..215
	i32 115, i32 109, i32 63, i32 61, i32 85, i32 13, i32 0, i32 6, ; 216..223
	i32 88, i32 101, i32 111, i32 37, i32 67, i32 104, i32 68, i32 80 ; 232..231
], align 4

@marshal_methods_number_of_classes = local_unnamed_addr constant i32 0, align 4

; marshal_methods_class_cache
@marshal_methods_class_cache = global [0 x %struct.MarshalMethodsManagedClass] [
], align 8; end of 'marshal_methods_class_cache' array


@get_function_pointer = internal unnamed_addr global void (i32, i32, i32, i8**)* null, align 8

; Function attributes: "frame-pointer"="non-leaf" "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+outline-atomics" uwtable willreturn writeonly
define void @xamarin_app_init (void (i32, i32, i32, i8**)* %fn) local_unnamed_addr #0
{
	store void (i32, i32, i32, i8**)* %fn, void (i32, i32, i32, i8**)** @get_function_pointer, align 8
	ret void
}

; Names of classes in which marshal methods reside
@mm_class_names = local_unnamed_addr constant [0 x i8*] zeroinitializer, align 8
@__MarshalMethodName_name.0 = internal constant [1 x i8] c"\00", align 1

; mm_method_names
@mm_method_names = local_unnamed_addr constant [1 x %struct.MarshalMethodName] [
	; 0
	%struct.MarshalMethodName {
		i64 0, ; id 0x0; name: 
		i8* getelementptr inbounds ([1 x i8], [1 x i8]* @__MarshalMethodName_name.0, i32 0, i32 0); name
	}
], align 8; end of 'mm_method_names' array


attributes #0 = { "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" uwtable willreturn writeonly "frame-pointer"="non-leaf" "target-cpu"="generic" "target-features"="+neon,+outline-atomics" }
attributes #1 = { "min-legal-vector-width"="0" mustprogress "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" uwtable "frame-pointer"="non-leaf" "target-cpu"="generic" "target-features"="+neon,+outline-atomics" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}
!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 1, !"branch-target-enforcement", i32 0}
!3 = !{i32 1, !"sign-return-address", i32 0}
!4 = !{i32 1, !"sign-return-address-all", i32 0}
!5 = !{i32 1, !"sign-return-address-with-bkey", i32 0}
!6 = !{!"Xamarin.Android remotes/origin/d17-5 @ a8a26c7b003e2524cc98acb2c2ffc2ddea0f6692"}
!llvm.linker.options = !{}
