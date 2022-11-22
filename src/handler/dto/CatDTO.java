package handler.dto;

public class CatDTO {
    private String fileName;
    private String catType;
    private String age;
    private String gender;
    private String location;
    private String etc;

    public String getCatImage() {
        return fileName;
    }

    public void setCatImage(String catImage) {
        this.fileName = catImage;
    }

    public String getCatType() {
        return catType;
    }

    public void setCatType(String catType) {
        this.catType = catType;
    }

    public String getAge() {
        return age;
    }

    public void setAge(String age) {
        this.age = age;
    }

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    public String getLocation() {
        return location;
    }

    public void setLocation(String location) {
        this.location = location;
    }

    public String getEtc() {
        return etc;
    }

    public void setEtc(String etc) {
        this.etc = etc;
    }
}
