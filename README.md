# xcode15crash

Purpose of this repo is to demonstrate Xcode 15.2 linking issue on x86.

### Steps to reproduce:
1. Install latest Xcode 15.2 on Intel CPU Mac, Ventura 13.6.4.
2. Run `swift run`.

### Expected output:
```
Running...
NWPathMonitor...
NWPathMonitor done.
Done
```

### Actual output:
```
NWPathMonitor...
[1]    3866 segmentation fault  swift run
```

### Workaround:
1. Use Xcode 14.3.1 on the same machine.
2. The same program perfectly runs with Xcode 15.2 on Apple Silicon.

### Crash log:
```
-------------------------------------
Translated Report (Full Report Below)
-------------------------------------

Process:               xcode15crash [3866]
Path:                  /Users/USER/*/xcode15crash
Identifier:            xcode15crash
Version:               ???
Code Type:             X86-64 (Native)
Parent Process:        zsh [659]
Responsible:           stable [38940]
User ID:               501

Date/Time:             2024-01-25 00:28:00.7968 +0200
OS Version:            macOS 13.6.4 (22G513)
Report Version:        12
Bridge OS Version:     8.3 (21P3049)
Anonymous UUID:        7D827149-42E7-FA8E-2B6E-14280720464D

Sleep/Wake UUID:       3044B3FD-B89E-41EF-8BE9-1E4062B55B38

Time Awake Since Boot: 91000 seconds
Time Since Wake:       2394 seconds

System Integrity Protection: enabled

Crashed Thread:        0  Dispatch queue: com.apple.main-thread

Exception Type:        EXC_BAD_ACCESS (SIGSEGV)
Exception Codes:       KERN_INVALID_ADDRESS at 0x0000000000000000
Exception Codes:       0x0000000000000001, 0x0000000000000000

Termination Reason:    Namespace SIGNAL, Code 11 Segmentation fault: 11
Terminating Process:   exc handler [3866]

VM Region Info: 0 is not in any region.  Bytes before following region: 4322820096
      REGION TYPE                    START - END         [ VSIZE] PRT/MAX SHRMOD  REGION DETAIL
      UNUSED SPACE AT START
--->  
      __TEXT                      101a90000-101a98000    [   32K] r-x/r-x SM=COW  .../xcode15crash

Thread 0 Crashed::  Dispatch queue: com.apple.main-thread
0   ???                                              0x0 ???
1   xcode15crash                             0x101a97252 main + 418 (main.swift:12)
2   dyld                                  0x7ff8179a041f start + 1903


Thread 0 crashed with X86 Thread State (64-bit):
  rax: 0x0000000000000000  rbx: 0x0000000101a970b0  rcx: 0x0000000000000001  rdx: 0x0000000085473819
  rdi: 0x0000000000000000  rsi: 0x000000000000001a  rbp: 0x00007ff7be46f1a0  rsp: 0x00007ff7be46f0c8
   r8: 0x0000000000000100   r9: 0x00000000000000ff  r10: 0x0000000000000600  r11: 0x00006000010eba1c
  r12: 0x00007ff7be46f368  r13: 0x00007ff7be46f3a0  r14: 0x00007ff7be46f3b0  r15: 0x00007ff7be46f230
  rip: 0x0000000000000000  rfl: 0x0000000000010246  cr2: 0x0000000000000000
  
Logical CPU:     6
Error Code:      0x00000014 (no mapping for user instruction read)
Trap Number:     14


Binary Images:
       0x101a90000 -        0x101a97fff xcode15crash (*) <f03b087c-0cdb-3f92-82cc-bdfa950d0ced> /Users/USER/*/xcode15crash
               0x0 - 0xffffffffffffffff ??? (*) <00000000-0000-0000-0000-000000000000> ???
    0x7ff81799a000 -     0x7ff817a325ef dyld (*) <8678e5e0-2643-3c19-8d09-b66e9040182c> /usr/lib/dyld

External Modification Summary:
  Calls made by other processes targeting this process:
    task_for_pid: 0
    thread_create: 0
    thread_set_state: 0
  Calls made by this process:
    task_for_pid: 0
    thread_create: 0
    thread_set_state: 0
  Calls made by all processes on this machine:
    task_for_pid: 30
    thread_create: 0
    thread_set_state: 568

VM Region Summary:
ReadOnly portion of Libraries: Total=286.3M resident=0K(0%) swapped_out_or_unallocated=286.3M(100%)
Writable regions: Total=529.4M written=0K(0%) resident=0K(0%) swapped_out=0K(0%) unallocated=529.4M(100%)

                                VIRTUAL   REGION 
REGION TYPE                        SIZE    COUNT (non-coalesced) 
===========                     =======  ======= 
Kernel Alloc Once                    8K        1 
MALLOC                           137.2M       11 
MALLOC guard page                   24K        5 
MALLOC_NANO (reserved)           384.0M        1         reserved VM address space (unallocated)
STACK GUARD                       56.0M        1 
Stack                             8192K        1 
VM_ALLOCATE                          4K        1 
__DATA                            3083K      137 
__DATA_CONST                      5643K       97 
__DATA_DIRTY                       339K       57 
__LINKEDIT                       170.9M        3 
__OBJC_RO                         66.3M        1 
__OBJC_RW                         2013K        2 
__TEXT                           115.4M      152 
dyld private memory                260K        2 
shared memory                       16K        2 
===========                     =======  ======= 
TOTAL                            948.9M      474 
TOTAL, minus reserved VM space   564.9M      474 



-----------
Full Report
-----------

{"app_name":"xcode15crash","timestamp":"2024-01-25 00:28:00.00 +0200","app_version":"","slice_uuid":"f03b087c-0cdb-3f92-82cc-bdfa950d0ced","build_version":"","platform":1,"share_with_app_devs":1,"is_first_party":1,"bug_type":"309","os_version":"macOS 13.6.4 (22G513)","roots_installed":0,"incident_id":"100F1724-FC42-4245-BE22-163251883C03","name":"xcode15crash"}
{
  "uptime" : 91000,
  "procRole" : "Unspecified",
  "version" : 2,
  "userID" : 501,
  "deployVersion" : 210,
  "modelCode" : "MacBookPro15,1",
  "coalitionID" : 2630,
  "osVersion" : {
    "train" : "macOS 13.6.4",
    "build" : "22G513",
    "releaseType" : "User"
  },
  "captureTime" : "2024-01-25 00:28:00.7968 +0200",
  "incident" : "100F1724-FC42-4245-BE22-163251883C03",
  "pid" : 3866,
  "cpuType" : "X86-64",
  "roots_installed" : 0,
  "bug_type" : "309",
  "procLaunch" : "2024-01-25 00:27:59.8303 +0200",
  "procStartAbsTime" : 91753608565249,
  "procExitAbsTime" : 91754574835954,
  "procName" : "xcode15crash",
  "procPath" : "\/Users\/USER\/*\/xcode15crash",
  "parentProc" : "zsh",
  "parentPid" : 659,
  "coalitionName" : "dev.warp.Warp-Stable",
  "crashReporterKey" : "7D827149-42E7-FA8E-2B6E-14280720464D",
  "responsiblePid" : 38940,
  "responsibleProc" : "stable",
  "codeSigningID" : "",
  "codeSigningTeamID" : "",
  "codeSigningValidationCategory" : 0,
  "codeSigningTrustLevel" : 0,
  "wakeTime" : 2394,
  "bridgeVersion" : {"build":"21P3049","train":"8.3"},
  "sleepWakeUUID" : "3044B3FD-B89E-41EF-8BE9-1E4062B55B38",
  "sip" : "enabled",
  "vmRegionInfo" : "0 is not in any region.  Bytes before following region: 4322820096\n      REGION TYPE                    START - END         [ VSIZE] PRT\/MAX SHRMOD  REGION DETAIL\n      UNUSED SPACE AT START\n--->  \n      __TEXT                      101a90000-101a98000    [   32K] r-x\/r-x SM=COW  ...\/xcode15crash",
  "exception" : {"codes":"0x0000000000000001, 0x0000000000000000","rawCodes":[1,0],"type":"EXC_BAD_ACCESS","signal":"SIGSEGV","subtype":"KERN_INVALID_ADDRESS at 0x0000000000000000"},
  "termination" : {"flags":0,"code":11,"namespace":"SIGNAL","indicator":"Segmentation fault: 11","byProc":"exc handler","byPid":3866},
  "vmregioninfo" : "0 is not in any region.  Bytes before following region: 4322820096\n      REGION TYPE                    START - END         [ VSIZE] PRT\/MAX SHRMOD  REGION DETAIL\n      UNUSED SPACE AT START\n--->  \n      __TEXT                      101a90000-101a98000    [   32K] r-x\/r-x SM=COW  ...\/xcode15crash",
  "extMods" : {"caller":{"thread_create":0,"thread_set_state":0,"task_for_pid":0},"system":{"thread_create":0,"thread_set_state":568,"task_for_pid":30},"targeted":{"thread_create":0,"thread_set_state":0,"task_for_pid":0},"warnings":0},
  "faultingThread" : 0,
  "threads" : [{"triggered":true,"id":843801,"threadState":{"r13":{"value":140702025970592},"rax":{"value":0},"rflags":{"value":66118},"cpu":{"value":6},"r14":{"value":140702025970608},"rsi":{"value":26},"r8":{"value":256},"cr2":{"value":0},"rdx":{"value":2236037145},"r10":{"value":1536},"r9":{"value":255},"r15":{"value":140702025970224},"rbx":{"value":4322848944,"sourceFile":"main.swift","symbol":"main","symbolLocation":0},"trap":{"value":14,"description":"(no mapping for user instruction read)"},"err":{"value":20},"r11":{"value":105553134008860},"rip":{"value":0},"rbp":{"value":140702025970080},"rsp":{"value":140702025969864},"r12":{"value":140702025970536},"rcx":{"value":1},"flavor":"x86_THREAD_STATE","rdi":{"value":0}},"queue":"com.apple.main-thread","frames":[{"imageOffset":0,"imageIndex":1},{"imageOffset":29266,"sourceLine":12,"sourceFile":"main.swift","symbol":"main","imageIndex":0,"symbolLocation":418},{"imageOffset":25631,"symbol":"start","symbolLocation":1903,"imageIndex":2}]}],
  "usedImages" : [
  {
    "source" : "P",
    "arch" : "x86_64",
    "base" : 4322820096,
    "size" : 32768,
    "uuid" : "f03b087c-0cdb-3f92-82cc-bdfa950d0ced",
    "path" : "\/Users\/USER\/*\/xcode15crash",
    "name" : "xcode15crash"
  },
  {
    "size" : 0,
    "source" : "A",
    "base" : 0,
    "uuid" : "00000000-0000-0000-0000-000000000000"
  },
  {
    "source" : "P",
    "arch" : "x86_64",
    "base" : 140703524560896,
    "size" : 624112,
    "uuid" : "8678e5e0-2643-3c19-8d09-b66e9040182c",
    "path" : "\/usr\/lib\/dyld",
    "name" : "dyld"
  }
],
  "sharedCache" : {
  "base" : 140703523938304,
  "size" : 21474836480,
  "uuid" : "7fe9478f-8955-356c-ac51-5c6ffc253b95"
},
  "vmSummary" : "ReadOnly portion of Libraries: Total=286.3M resident=0K(0%) swapped_out_or_unallocated=286.3M(100%)\nWritable regions: Total=529.4M written=0K(0%) resident=0K(0%) swapped_out=0K(0%) unallocated=529.4M(100%)\n\n                                VIRTUAL   REGION \nREGION TYPE                        SIZE    COUNT (non-coalesced) \n===========                     =======  ======= \nKernel Alloc Once                    8K        1 \nMALLOC                           137.2M       11 \nMALLOC guard page                   24K        5 \nMALLOC_NANO (reserved)           384.0M        1         reserved VM address space (unallocated)\nSTACK GUARD                       56.0M        1 \nStack                             8192K        1 \nVM_ALLOCATE                          4K        1 \n__DATA                            3083K      137 \n__DATA_CONST                      5643K       97 \n__DATA_DIRTY                       339K       57 \n__LINKEDIT                       170.9M        3 \n__OBJC_RO                         66.3M        1 \n__OBJC_RW                         2013K        2 \n__TEXT                           115.4M      152 \ndyld private memory                260K        2 \nshared memory                       16K        2 \n===========                     =======  ======= \nTOTAL                            948.9M      474 \nTOTAL, minus reserved VM space   564.9M      474 \n",
  "legacyInfo" : {
  "threadTriggered" : {
    "queue" : "com.apple.main-thread"
  }
},
  "logWritingSignature" : "0fd282fb4587da6bc453a095e60599a1577e16e5",
  "trialInfo" : {
  "rollouts" : [
    {
      "rolloutId" : "61675b89201f677a9a4cbd65",
      "factorPackIds" : {
        "HEALTH_FEATURE_AVAILABILITY" : "65a855f5f087695cfac03d1f"
      },
      "deploymentId" : 240000091
    },
    {
      "rolloutId" : "6410af69ed1e1e7ab93ed169",
      "factorPackIds" : {

      },
      "deploymentId" : 240000010
    }
  ],
  "experiments" : [

  ]
}
}


```
