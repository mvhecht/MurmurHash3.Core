# Set-ExecutionPolicy -Scope CurrentUser Unrestricted
# Make sure msbuild.exe is in your path - C:\Windows\Microsoft.NET\Framework64\v4.0.30319
# Make sure nuget.exe is in your path
# nuget push MurmurHash3.Core.x.y.z.nupkg

### Build Tests

msbuild MurmurHash3.Core.Tests/MurmurHash3.Core.Tests.csproj /p:TargetFrameworkVersion=v4.7 /p:Configuration="Release" /t:Clean /t:Rebuild /p:OutputPath="../nuget-tests/net47"
if ($LastExitCode -ne 0) {
    echo ".NET 4.7 Tests Build failed. Process exited with error code $LastExitCode."
    Return
}

msbuild MurmurHash3.Core.Tests/MurmurHash3.Core.Tests.csproj /p:TargetFrameworkVersion=v4.6.2 /p:Configuration="Release" /t:Clean /t:Rebuild /p:OutputPath="../nuget-tests/net462"
if ($LastExitCode -ne 0) {
    echo ".NET 4.6.2 Tests Build failed. Process exited with error code $LastExitCode."
    Return
}

msbuild MurmurHash3.Core.Tests/MurmurHash3.Core.Tests.csproj /p:TargetFrameworkVersion=v4.6.1 /p:Configuration="Release" /t:Clean /t:Rebuild /p:OutputPath="../nuget-tests/net461"
if ($LastExitCode -ne 0) {
    echo ".NET 4.6.1 Tests Build failed. Process exited with error code $LastExitCode."
    Return
}

msbuild MurmurHash3.Core.Tests/MurmurHash3.Core.Tests.csproj /p:TargetFrameworkVersion=v4.6 /p:Configuration="Release" /t:Clean /t:Rebuild /p:OutputPath="../nuget-tests/net46"
if ($LastExitCode -ne 0) {
    echo ".NET 4.6 Tests Build failed. Process exited with error code $LastExitCode."
    Return
}

msbuild MurmurHash3.Core.Tests/MurmurHash3.Core.Tests.csproj /p:TargetFrameworkVersion=v4.5.2 /p:Configuration="Release" /t:Clean /t:Rebuild /p:OutputPath="../nuget-tests/net452"
if ($LastExitCode -ne 0) {
    echo ".NET 4.5.2 Tests Build failed. Process exited with error code $LastExitCode."
    Return
}

msbuild MurmurHash3.Core.Tests/MurmurHash3.Core.Tests.csproj /p:TargetFrameworkVersion=v4.5.1 /p:Configuration="Release" /t:Clean /t:Rebuild /p:OutputPath="../nuget-tests/net451"
if ($LastExitCode -ne 0) {
    echo ".NET 4.5.1 Tests Build failed. Process exited with error code $LastExitCode."
    Return
}

msbuild MurmurHash3.Core.Tests/MurmurHash3.Core.Tests.csproj /p:TargetFrameworkVersion=v4.5 /p:Configuration="Release" /t:Clean /t:Rebuild /p:OutputPath="../nuget-tests/net45"
if ($LastExitCode -ne 0) {
    echo ".NET 4.5 Tests Build failed. Process exited with error code $LastExitCode."
    Return
}

### Run Tests

.\packages\NUnit.ConsoleRunner.3.7.0\tools\nunit3-console.exe ./nuget-tests/net47/MurmurHash3.Core.Tests.dll
if ($LastExitCode -ne 0) {
    echo ".NET 4.7 Tests failed. Process exited with error code $LastExitCode."
    Return
}
echo "*** .NET 4.7 All tests passed."

.\packages\NUnit.ConsoleRunner.3.7.0\tools\nunit3-console.exe ./nuget-tests/net462/MurmurHash3.Core.Tests.dll
if ($LastExitCode -ne 0) {
    echo ".NET 4.6.2 Tests failed. Process exited with error code $LastExitCode."
    Return
}
echo "*** .NET 4.6.2 All tests passed."

.\packages\NUnit.ConsoleRunner.3.7.0\tools\nunit3-console.exe ./nuget-tests/net461/MurmurHash3.Core.Tests.dll
if ($LastExitCode -ne 0) {
    echo ".NET 4.6.1 Tests failed. Process exited with error code $LastExitCode."
    Return
}
echo "*** .NET 4.6.1 All tests passed."

.\packages\NUnit.ConsoleRunner.3.7.0\tools\nunit3-console.exe ./nuget-tests/net46/MurmurHash3.Core.Tests.dll
if ($LastExitCode -ne 0) {
    echo ".NET 4.6 Tests failed. Process exited with error code $LastExitCode."
    Return
}
echo "*** .NET 4.6 All tests passed."

.\packages\NUnit.ConsoleRunner.3.7.0\tools\nunit3-console.exe ./nuget-tests/net452/MurmurHash3.Core.Tests.dll
if ($LastExitCode -ne 0) {
    echo ".NET 4.5.2 Tests failed. Process exited with error code $LastExitCode."
    Return
}
echo "*** .NET 4.5.2 All tests passed."

.\packages\NUnit.ConsoleRunner.3.7.0\tools\nunit3-console.exe ./nuget-tests/net451/MurmurHash3.Core.Tests.dll
if ($LastExitCode -ne 0) {
    echo ".NET 4.5.1 Tests failed. Process exited with error code $LastExitCode."
    Return
}
echo "*** .NET 4.5.1 All tests passed."

.\packages\NUnit.ConsoleRunner.3.7.0\tools\nunit3-console.exe ./nuget-tests/net45/MurmurHash3.Core.Tests.dll
if ($LastExitCode -ne 0) {
    echo ".NET 4.5 Tests failed. Process exited with error code $LastExitCode."
    Return
}
echo "*** .NET 4.5 All tests passed."


### Build Nuget DLL's

msbuild MurmurHash3.Core/MurmurHash3.Core.csproj /p:TargetFrameworkVersion=v4.7 /p:Configuration="Release" /t:Clean /t:Rebuild /p:OutputPath="../nuget/lib/net47"
if ($LastExitCode -ne 0) {
    echo ".NET 4.7 Build failed. Process exited with error code $LastExitCode."
    Return
}

msbuild MurmurHash3.Core/MurmurHash3.Core.csproj /p:TargetFrameworkVersion=v4.6.2 /p:Configuration="Release" /t:Clean /t:Rebuild /p:OutputPath="../nuget/lib/net462"
if ($LastExitCode -ne 0) {
    echo ".NET 4.6.2 Build failed. Process exited with error code $LastExitCode."
    Return
}

msbuild MurmurHash3.Core/MurmurHash3.Core.csproj /p:TargetFrameworkVersion=v4.6.1 /p:Configuration="Release" /t:Clean /t:Rebuild /p:OutputPath="../nuget/lib/net461"
if ($LastExitCode -ne 0) {
    echo ".NET 4.6.1 Build failed. Process exited with error code $LastExitCode."
    Return
}

msbuild MurmurHash3.Core/MurmurHash3.Core.csproj /p:TargetFrameworkVersion=v4.6 /p:Configuration="Release" /t:Clean /t:Rebuild /p:OutputPath="../nuget/lib/net46"
if ($LastExitCode -ne 0) {
    echo ".NET 4.6 Build failed. Process exited with error code $LastExitCode."
    Return
}

msbuild MurmurHash3.Core/MurmurHash3.Core.csproj /p:TargetFrameworkVersion=v4.5.2 /p:Configuration="Release" /t:Clean /t:Rebuild /p:OutputPath="../nuget/lib/net452"
if ($LastExitCode -ne 0) {
    echo ".NET 4.5.2 Build failed. Process exited with error code $LastExitCode."
    Return
}

msbuild MurmurHash3.Core/MurmurHash3.Core.csproj /p:TargetFrameworkVersion=v4.5.1 /p:Configuration="Release" /t:Clean /t:Rebuild /p:OutputPath="../nuget/lib/net451"
if ($LastExitCode -ne 0) {
    echo ".NET 4.5.1 Build failed. Process exited with error code $LastExitCode."
    Return
}

msbuild MurmurHash3.Core/MurmurHash3.Core.csproj /p:TargetFrameworkVersion=v4.5 /p:Configuration="Release" /t:Clean /t:Rebuild /p:OutputPath="../nuget/lib/net45"
if ($LastExitCode -ne 0) {
    echo ".NET 4.5 Build failed. Process exited with error code $LastExitCode."
    Return
}

### Nuget Pack

nuget pack nuget/MurmurHash3.Core.nuspec
if ($LastExitCode -ne 0) {
    echo "Nuget pack failed. Process exited with error code $LastExitCode."
    Return
}
