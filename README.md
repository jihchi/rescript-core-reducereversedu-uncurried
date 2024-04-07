# Minimal reproducible example

> This example has been [switched back to curried mode](https://rescript-lang.org/blog/uncurried-mode#how-to-switch-back-to-curried-mode).

```sh
git clone https://github.com/jihchi/rescript-core-reducereversedu-uncurried.git
cd rescript-core-reducereversedu-uncurried
npm install
npm run res:clean
npm run res:build
```

<details>
  <summary>Expect to see the error message below (click to expand)</summary>

```console
> rescript-core-reducereversedu@0.0.0 res:build
> rescript

>>>> Start compiling
Dependency on @rescript/core
rescript: [172/217] src/Core__List.cmj
FAILED: src/Core__List.cmj

  We've found a bug for you!
  /tmp/rescript-core-reducereversedu-uncurried/node_modules/@rescript/core/src/Core__List.res:582:39

  580 │     reduceReverseUnsafe(l, acc, f)
  581 │   } else {
  582 │     A.reduceReverseU(toArray(l), acc, f)
  583 │   }
  584 │ }

  This function is a curried function where an uncurried function is expected

rescript: [216/217] src/Core__Intl.cmj
FAILED: cannot make progress due to previous errors.
Failure: /tmp/rescript-core-reducereversedu-uncurried/node_modules/rescript/linux/ninja.exe
Location: /tmp/rescript-core-reducereversedu-uncurried/node_modules/@rescript/core/lib/bs
>>>> Finish compiling (exit: 1)
```
</details>
