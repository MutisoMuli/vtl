<?php


class Lang {
    public static function T($var) {
        return Lang($var);
    }

    public static function htmlspecialchars($var) {
        return htmlspecialchars($var);
    }
}
