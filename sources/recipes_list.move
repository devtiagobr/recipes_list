module recipes_list::recipes_list;

use std::string::String;

public struct Recipe has drop, store {
    name: String,
    description: String,
    image_ref: String,
}

public struct RecipeList has key, store {
    id: UID,
    recipes: vector<Recipe>,
}

public fun create_list(ctx: &mut TxContext) {
    let list = RecipeList {
        id: object::new(ctx),
        recipes: vector[],
    };
    transfer::transfer(list, tx_context::sender(ctx));
}
