(* This file has been generated by ocp-ocamlres *)
let root = OCamlRes.Res.([
  File ("ReadME.md",
    "\n\
     \n\
     # Build\n\
     ```\n\
     npm run build\n\
     ```\n\
     \n\
     # Watch\n\
     \n\
     ```\n\
     npm run watch\n\
     ```\n\
     \n\
     \n\
     # Editor\n\
     If you use `vscode`, Press `Windows + Shift + B` it will build automatically") ;
  Dir ("basic", [
    Dir ("src", [
      File ("demo.ml",
        "\n\
         \n\
         let () = Js.log \"Hello, BuckleScript\"")]) ;
    File ("package.json",
      "{\n\
      \  \"name\": \"${bsb:name}\",\n\
      \  \"version\": \"${bsb:proj-version}\",\n\
      \  \"scripts\": {\n\
      \    \"clean\": \"bsb -clean\",\n\
      \    \"clean:all\": \"bsb -clean-world\",\n\
      \    \"build\": \"bsb\",\n\
      \    \"build:all\": \"bsb -make-world\",\n\
      \    \"watch\": \"bsb -make-world -w\"\n\
      \  },\n\
      \  \"keywords\": [\n\
      \    \"Bucklescript\"\n\
      \  ],\n\
      \  \"license\": \"MIT\",\n\
      \  \"devDependencies\": {\n\
      \    \"bs-platform\": \"${bsb:bs-version}\"\n\
      \  }\n\
       }") ;
    File ("bsconfig.json",
      "{\n\
      \  \"name\": \"${bsb:name}\",\n\
      \  \"version\": \"${bsb:proj-version}\",\n\
      \  \"sources\": [\n\
      \    \"src\"\n\
      \  ],\n\
      \  \"reason\" : { \"react-jsx\" : true},\n\
      \  \"bs-dependencies\" : [\n\
      \      // add your bs-dependencies here \n\
      \  ]\n\
       }") ;
    Dir (".vscode", [
      File ("tasks.json",
        "{\n\
        \    \"version\": \"${bsb:proj-version}\",\n\
        \    \"command\": \"npm\",\n\
        \    \"options\": {\n\
        \        \"cwd\": \"${workspaceRoot}\"\n\
        \    },\n\
        \    \"isShellCommand\": true,\n\
        \    \"args\": [\n\
        \        \"run\",\n\
        \        \"watch\"\n\
        \    ],\n\
        \    \"showOutput\": \"always\",\n\
        \    \"isBackground\": true,\n\
        \    \"problemMatcher\": {\n\
        \        \"fileLocation\": \"absolute\",\n\
        \        \"owner\": \"ocaml\",\n\
        \        \"watching\": {\n\
        \            \"activeOnStart\": true,\n\
        \            \"beginsPattern\": \">>>> Start compiling\",\n\
        \            \"endsPattern\": \">>>> Finish compiling\"\n\
        \        },\n\
        \        \"pattern\": [\n\
        \            {\n\
        \                \"regexp\": \"^File \\\"(.*)\\\", line (\\\\d+)(?:, characters (\\\\d+)-(\\\\d+))?:$\",\n\
        \                \"file\": 1,\n\
        \                \"line\": 2,\n\
        \                \"column\": 3,\n\
        \                \"endColumn\": 4\n\
        \            },\n\
        \            {\n\
        \                \"regexp\": \"^(?:(?:Parse\\\\s+)?(Warning|[Ee]rror)(?:\\\\s+\\\\d+)?:)?\\\\s+(.*)$\",\n\
        \                \"severity\": 1,\n\
        \                \"message\": 2,\n\
        \                \"loop\": true\n\
        \            }\n\
        \        ]\n\
        \    }\n\
         }")])])
])
