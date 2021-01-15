class Clock {
    constructor() {
        const date = new Date();
        // debugger
        this.hour = date.getHours();
        this.min = date.getMinutes();
        this.sec = date.getSeconds();
        this.printTime();
        // 1. Create a Date object.
        // 2. Store the hours, minutes, and seconds.
        // 3. Call printTime.
        // 4. Schedule the tick at 1 second intervals.
        
        setInterval(this._tick.bind(this),1000);
    }

    printTime() {
        console.log(`${this.hour}:${this.min}:${this.sec}`)
        // Format the time in HH:MM:SS
        // Use console.log to print it.
    }

    _tick() {
      
        this.sec += 1 
        if (this.sec === 60){
            this.min += 1;
            this.sec = 0;
        }
        if (this.min === 60){
            this.hour += 1;
            this.min = 0;
        }
        this.hour = this.hour % 24;
        this.printTime();
        // 1. Increment the time by one second.
        // 2. Call printTime.
    }
}

const clock = new Clock();


