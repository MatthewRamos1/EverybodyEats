//
//  Storage.swift
//  EverybodyEats
//
//  Created by Jaheed Haynes on 4/22/20.
//  Copyright © 2020 Ahad Islam. All rights reserved.
//

/*
import Foundation
import FirebaseStorage

class StorageService {
  
  
  // let's create a reference to the Firebase storage
  private let storageRef = Storage.storage().reference()
  
  // default parameters in Swift e.g userId: String? = nil
  public func uploadPhoto(userId: String? = nil, itemId: String? = nil, image: UIImage, completion: @escaping (Result<URL, Error>) -> ()) {
    
    // 1. convert UIImage to Data because this is the object we are posting to Firebase Storage
    guard let imageData = image.jpegData(compressionQuality: 1.0) else {
      return
    }
    
    // we need to establish which bucket or collection or folder we will be saving the photo to
    var photoReference: StorageReference! // nil
    
    if let userId = userId { // coming from ProfileViewController
      photoReference = storageRef.child("UserProfilePhotos/\(userId).jpg")
    } else if let itemId = itemId { // coming from CreateItemViewController
      photoReference = storageRef.child("ItemsPhotos/\(itemId).jpg")
    }
    
    // configure metatdata for the object being uploaded
    let metadata = StorageMetadata()
    metadata.contentType = "image/jpg" // MIME type
    
    let _ = photoReference.putData(imageData, metadata: metadata) { (metadata, error) in
      if let error = error {
        completion(.failure(error))
      } else if let _ = metadata {
        photoReference.downloadURL { (url, error) in
          if let error = error {
            completion(.failure(error))
          } else if let url = url {
            completion(.success(url))
          }
        }
      }
    }
    
  }
}
*/
