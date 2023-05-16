class Game {
    // Private fields
    #id; #name; #year; #platform;
    
    //Constructor
    constructor(id, name, year, platform) {
    this.#id = id;
    this.#name = name;
    this.#year = year;
    this.#platform = platform;
}
    
    //Getters
    get id() { return this.#id; }
    get name() { return this.#name; }
    get year() { return this.#year; }
    get platform() { return this.#platform; }
    
}
