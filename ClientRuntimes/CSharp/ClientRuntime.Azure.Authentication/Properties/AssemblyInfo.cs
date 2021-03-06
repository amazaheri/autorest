// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for license information.

using System;
using System.Reflection;
using System.Resources;
using System.Runtime.CompilerServices;
using System.Runtime.InteropServices;

[assembly: AssemblyTitle("Microsoft Rest Azure Client Runtime Authentication")]
[assembly: AssemblyDescription("Client authentication infrastructure for Azure client libraries.")]
[assembly: AssemblyVersion("0.9.0.0")]
[assembly: AssemblyFileVersion("0.9.3.0")]

[assembly: AssemblyConfiguration("")]
[assembly: AssemblyCompany("Microsoft Corporation")]
[assembly: AssemblyProduct("Azure .NET SDK")]
[assembly: AssemblyCopyright("Copyright (c) Microsoft Corporation")]
[assembly: AssemblyTrademark("")]
[assembly: AssemblyCulture("")]
[assembly: NeutralResourcesLanguage("en")]
[assembly: CLSCompliant(false)]
[assembly: ComVisible(false)]
#if DEBUG
[assembly: InternalsVisibleTo("ClientRuntime.Azure.Tests", AllInternalsVisible =true)]
#endif
