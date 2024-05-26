actor Main {

    public func calculateAspectRatio(width: Float, height: Float) : async (Float, Float) {
        let gcd = func(x: Float, y: Float) : Float {
            if (y == 0.0) {
                return x;
            } else {
                return gcd(y, x % y);
            }
        };
        
        let divisor = gcd(width, height);
        return (width / divisor, height / divisor);
    };

    public func resizeWidth(newHeight: Float, originalWidth: Float, originalHeight: Float) : async Float {
        return (newHeight
         / originalHeight) * originalWidth;
    };

    public func resizeHeight(newWidth: Float, originalWidth: Float, originalHeight: Float) : async Float {
        return (newWidth / originalWidth) * originalHeight;};
}