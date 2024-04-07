Console.log("Hello, world!")

Console.log(List.make(~length=1001, 1)->List.reduceReverse(0, (acc, item) => acc + item))
